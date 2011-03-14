#include <stdio.h>

#include <android/asset_manager.h>
#include <GLES/gl.h>

#include <squirrel.h>
#include <sqstdio.h>
#include <sqstdaux.h>

#include <common.h>
#include <emo.h>

/*
 * Squirrel basic functions
 */
/*
 * Read script callback
 */
static SQInteger sq_lexer(SQUserPointer asset) {
	SQChar c;
		if(AAsset_read((AAsset*)asset, &c, 1) > 0) {
			return c;
		}
	return 0;
}
/*
 * Call Squirrel function with no parameter
 */
static SQBool callSqFunctionNoParam(HSQUIRRELVM v, const SQChar* name) {
	SQBool result = SQFalse;

	SQInteger top = sq_gettop(v);
	sq_pushroottable(v);
	sq_pushstring(v, name, -1);
	if(SQ_SUCCEEDED(sq_get(v, -2))) {
		sq_pushroottable(v);
		result = SQ_SUCCEEDED(sq_call(v, 1, SQFalse, SQTrue));
	}
	sq_settop(v,top);

	return result;
}
/*
 * Call Squirrel function with one string parameter
 */
static SQBool callSqFunctionOneString(HSQUIRRELVM v, const SQChar* name, const SQChar* param) {
	SQBool result = SQFalse;

	SQInteger top = sq_gettop(v);
	sq_pushroottable(v);
	sq_pushstring(v, name, -1);
	if(SQ_SUCCEEDED(sq_get(v, -2))) {
		sq_pushroottable(v);
		sq_pushstring(v, param, -1);
		result = SQ_SUCCEEDED(sq_call(v, 2, SQFalse, SQTrue));
	}
	sq_settop(v,top);

	return result;
}
/*
 * printfunc
 */
static void sq_printfunc(HSQUIRRELVM v,const SQChar *s,...) {
	static SQChar text[2048];
	va_list args;
    va_start(args, s);
    scvsprintf(text, s, args);
    va_end(args);

    LOGI(text);
}
/*
 * errorfunc
 */
static void sq_errorfunc(HSQUIRRELVM v,const SQChar *s,...) {
	static SQChar text[2048];
	va_list args;
    va_start(args, s);
    scvsprintf(text, s, args);
    va_end(args);

    callSqFunctionOneString(v, "onError", text);

    LOGW(text);
}
/**
 * Initialize the framework
 */
void emo_init_display(struct engine* engine) {

    /* init Squirrel VM */
    sqstd_seterrorhandlers(engine->sqvm);
    sq_setprintfunc(engine->sqvm, sq_printfunc, sq_errorfunc);

    /* read squirrel script */
    // use asset manager to open asset by filename
    AAssetManager* mgr = engine->app->activity->assetManager;
    if (mgr == NULL) {
    	engine->lastError = ERR_SCRIPT_LOAD;
    	LOGE("Failed to load AAssetManager");
    	return;
    }

    AAsset* asset = AAssetManager_open(mgr, SQUIRREL_MAIN_SCRIPT, AASSET_MODE_UNKNOWN);
    if (asset == NULL) {
    	engine->lastError = ERR_SCRIPT_OPEN;
    	LOGE("Failed to open Emo main script file");
    	return;
    }

    if(SQ_SUCCEEDED(sq_compile(engine->sqvm, sq_lexer, asset, SQUIRREL_MAIN_SCRIPT, SQTrue))) {
        sq_pushroottable(engine->sqvm);
        if (SQ_FAILED(sq_call(engine->sqvm, 1, SQFalse, SQTrue))) {
        	engine->lastError = ERR_SCRIPT_CALL_ROOT;
            LOGE("failed to sq_call");
            return;
        }
    } else {
    	engine->lastError = ERR_SCRIPT_COMPILE;
        LOGE("Failed to compile squirrel script");
        return;
    }

    callSqFunctionNoParam(engine->sqvm, "onLoad");

    /* init OpenGL state */
    glHint(GL_PERSPECTIVE_CORRECTION_HINT, GL_NICEST);
    glEnable(GL_CULL_FACE);
    glDisable(GL_DEPTH_TEST);

}

/*
 * Draw current frame
 */
void emo_draw_frame(struct engine* engine) {
    glClearColor(0, 0, 0, 1);
    glClear(GL_COLOR_BUFFER_BIT);

	callSqFunctionNoParam(engine->sqvm, "onDrawFrame");
}


/*
 * Terminate the framework
 */
void emo_term_display(struct engine* engine) {
	callSqFunctionNoParam(engine->sqvm, "onDispose");
}

/**
 * Process the input event.
 */
int32_t emo_handle_input(struct android_app* app, AInputEvent* event) {
    struct engine* engine = (struct engine*)app->userData;
    if (AInputEvent_getType(event) == AINPUT_EVENT_TYPE_MOTION) {
        engine->state.x = AMotionEvent_getX(event, 0);
        engine->state.y = AMotionEvent_getY(event, 0);
        return 1;
    }
    return 0;
}

/*
 * Gained focus
 */
void emo_gained_focus(struct engine* engine) {
    engine->animating = 1;
}

/*
 * Lost focus
 */
void emo_lost_focus(struct engine* engine) {
    engine->animating = 0;
}
