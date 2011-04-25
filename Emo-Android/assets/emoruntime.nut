/******************************************************
 *                                                    *
 *   RUNTIME CLASSES AND CONSTANTS FOR EMO-FRAMEWORK  *
 *                                                    *
 *            !!DO NOT EDIT THIS FILE!!               *
 ******************************************************/

OS_ANDROID <- "Android";
OS_IOS     <- "iOS";

ANDROID_GRAPHICS_DIR <- "graphics/";
ANDROID_SOUNDS_DIR   <- "sounds/";

EMO_NO          <- 0;
EMO_YES         <- 1;

EMO_NO_ERROR    <- 0x0000;
EMO_ERROR       <- 0x0001;
LOG_INFO        <- 0x0002;
LOG_ERROR       <- 0x0003;
LOG_WARN        <- 0x0004;

ERR_SCRIPT_LOAD           <- 0x0100;
ERR_SCRIPT_OPEN           <- 0x0101;
ERR_SCRIPT_COMPILE        <- 0x0102;
ERR_SCRIPT_CALL_ROOT      <- 0x0103;
ERR_ASSET_LOAD            <- 0x0104;
ERR_ASSET_OPEN            <- 0x0105;
ERR_ASSET_UNLOAD          <- 0x0106;
ERR_AUDIO_ENGINE_CREATED  <- 0x0107;
ERR_AUDIO_CHANNEL_CREATED <- 0x0108;
ERR_AUDIO_ENGINE_INIT     <- 0x0100;
ERR_AUDIO_ASSET_INIT      <- 0x0110;
ERR_AUDIO_ENGINE_CLOSED   <- 0x0111;
ERR_AUDIO_CHANNEL_CLOSED  <- 0x0112;
ERR_AUDIO_ENGINE_STATUS   <- 0x0113;
ERR_INVALID_PARAM_COUNT   <- 0x0114;
ERR_INVALID_PARAM_TYPE    <- 0x0115;
ERR_INVALID_PARAM         <- 0x0116;
ERR_INVALID_ID            <- 0x0117;
ERR_FILE_OPEN             <- 0x0118;
ERR_CREATE_VERTEX         <- 0x0119;
ERR_NOT_SUPPORTED         <- 0x0120;

OPT_ENABLE_PERSPECTIVE_NICEST   <- 0x1000;
OPT_ENABLE_PERSPECTIVE_FASTEST  <- 0x1001;
OPT_WINDOW_FORCE_FULLSCREEN     <- 0x1002;
OPT_WINDOW_KEEP_SCREEN_ON       <- 0x1003;
OPT_ENABLE_BACK_KEY             <- 0x1004;
OPT_DISABLE_BACK_KEY            <- 0x1005;
OPT_ORIENTATION_PORTRAIT        <- 0x1006;
OPT_ORIENTATION_LANDSCAPE       <- 0x1007;

MODE_PRIVATE                    <- 0x0000;
MODE_WORLD_READABLE             <- 0x0001;
MODE_WORLD_WRITEABLE            <- 0x0002;

MOTION_EVENT_ACTION_DOWN         <- 0;
MOTION_EVENT_ACTION_UP           <- 1;
MOTION_EVENT_ACTION_MOVE         <- 2;
MOTION_EVENT_ACTION_CANCEL       <- 3;
MOTION_EVENT_ACTION_OUTSIDE      <- 4;
MOTION_EVENT_ACTION_POINTER_DOWN <- 5;
MOTION_EVENT_ACTION_POINTER_UP   <- 6;

KEY_EVENT_ACTION_DOWN            <- 0;
KEY_EVENT_ACTION_UP              <- 1;
KEY_EVENT_ACTION_MULTIPLE        <- 2;

META_NONE           <- 0;
META_ALT_ON         <- 0x02;
META_ALT_LEFT_ON    <- 0x10;
META_ALT_RIGHT_ON   <- 0x20;
META_SHIFT_ON       <- 0x01;
META_SHIFT_LEFT_ON  <- 0x40;
META_SHIFT_RIGHT_ON <- 0x80;
META_SYM_ON         <- 0x04;

SENSOR_TYPE_ACCELEROMETER      <- 1;
SENSOR_TYPE_MAGNETIC_FIELD     <- 2;
SENSOR_TYPE_GYROSCOPE          <- 4;
SENSOR_TYPE_LIGHT              <- 5;
SENSOR_TYPE_PROXIMITY          <- 8;

SENSOR_STATUS_UNRELIABLE       <- 0;
SENSOR_STATUS_ACCURACY_LOW     <- 1;
SENSOR_STATUS_ACCURACY_MEDIUM  <- 2;
SENSOR_STATUS_ACCURACY_HIGH    <- 3;

SENSOR_STANDARD_GRAVITY           <-  9.80665;
SENSOR_MAGNETIC_FIELD_EARTH_MAX   <-  60.0;
SENSOR_MAGNETIC_FIELD_EARTH_MIN   <-  30.0;

KEYCODE_UNKNOWN         <- 0;
KEYCODE_SOFT_LEFT       <- 1;
KEYCODE_SOFT_RIGHT      <- 2;
KEYCODE_HOME            <- 3;
KEYCODE_BACK            <- 4;
KEYCODE_CALL            <- 5;
KEYCODE_ENDCALL         <- 6;
KEYCODE_0               <- 7;
KEYCODE_1               <- 8;
KEYCODE_2               <- 9;
KEYCODE_3               <- 10;
KEYCODE_4               <- 11;
KEYCODE_5               <- 12;
KEYCODE_6               <- 13;
KEYCODE_7               <- 14;
KEYCODE_8               <- 15;
KEYCODE_9               <- 16;
KEYCODE_STAR            <- 17;
KEYCODE_POUND           <- 18;
KEYCODE_DPAD_UP         <- 19;
KEYCODE_DPAD_DOWN       <- 20;
KEYCODE_DPAD_LEFT       <- 21;
KEYCODE_DPAD_RIGHT      <- 22;
KEYCODE_DPAD_CENTER     <- 23;
KEYCODE_VOLUME_UP       <- 24;
KEYCODE_VOLUME_DOWN     <- 25;
KEYCODE_POWER           <- 26;
KEYCODE_CAMERA          <- 27;
KEYCODE_CLEAR           <- 28;
KEYCODE_A               <- 29;
KEYCODE_B               <- 30;
KEYCODE_C               <- 31;
KEYCODE_D               <- 32;
KEYCODE_E               <- 33;
KEYCODE_F               <- 34;
KEYCODE_G               <- 35;
KEYCODE_H               <- 36;
KEYCODE_I               <- 37;
KEYCODE_J               <- 38;
KEYCODE_K               <- 39;
KEYCODE_L               <- 40;
KEYCODE_M               <- 41;
KEYCODE_N               <- 42;
KEYCODE_O               <- 43;
KEYCODE_P               <- 44;
KEYCODE_Q               <- 45;
KEYCODE_R               <- 46;
KEYCODE_S               <- 47;
KEYCODE_T               <- 48;
KEYCODE_U               <- 49;
KEYCODE_V               <- 50;
KEYCODE_W               <- 51;
KEYCODE_X               <- 52;
KEYCODE_Y               <- 53;
KEYCODE_Z               <- 54;
KEYCODE_COMMA           <- 55;
KEYCODE_PERIOD          <- 56;
KEYCODE_ALT_LEFT        <- 57;
KEYCODE_ALT_RIGHT       <- 58;
KEYCODE_SHIFT_LEFT      <- 59;
KEYCODE_SHIFT_RIGHT     <- 60;
KEYCODE_TAB             <- 61;
KEYCODE_SPACE           <- 62;
KEYCODE_SYM             <- 63;
KEYCODE_EXPLORER        <- 64;
KEYCODE_ENVELOPE        <- 65;
KEYCODE_ENTER           <- 66;
KEYCODE_DEL             <- 67;
KEYCODE_GRAVE           <- 68;
KEYCODE_MINUS           <- 69;
KEYCODE_EQUALS          <- 70;
KEYCODE_LEFT_BRACKET    <- 71;
KEYCODE_RIGHT_BRACKET   <- 72;
KEYCODE_BACKSLASH       <- 73;
KEYCODE_SEMICOLON       <- 74;
KEYCODE_APOSTROPHE      <- 75;
KEYCODE_SLASH           <- 76;
KEYCODE_AT              <- 77;
KEYCODE_NUM             <- 78;
KEYCODE_HEADSETHOOK     <- 79;
KEYCODE_FOCUS           <- 80;
KEYCODE_PLUS            <- 81;
KEYCODE_MENU            <- 82;
KEYCODE_NOTIFICATION    <- 83;
KEYCODE_SEARCH          <- 84;
KEYCODE_MEDIA_PLAY_PAUSE<- 85;
KEYCODE_MEDIA_STOP      <- 86;
KEYCODE_MEDIA_NEXT      <- 87;
KEYCODE_MEDIA_PREVIOUS  <- 88;
KEYCODE_MEDIA_REWIND    <- 89;
KEYCODE_MEDIA_FAST_FORWARD <- 90;
KEYCODE_MUTE            <- 91;
KEYCODE_PAGE_UP         <- 92;
KEYCODE_PAGE_DOWN       <- 93;
KEYCODE_PICTSYMBOLS     <- 94;
KEYCODE_SWITCH_CHARSET  <- 95;
KEYCODE_BUTTON_A        <- 96;
KEYCODE_BUTTON_B        <- 97;
KEYCODE_BUTTON_C        <- 98;
KEYCODE_BUTTON_X        <- 99;
KEYCODE_BUTTON_Y        <- 100;
KEYCODE_BUTTON_Z        <- 101;
KEYCODE_BUTTON_L1       <- 102;
KEYCODE_BUTTON_R1       <- 103;
KEYCODE_BUTTON_L2       <- 104;
KEYCODE_BUTTON_R2       <- 105;
KEYCODE_BUTTON_THUMBL   <- 106;
KEYCODE_BUTTON_THUMBR   <- 107;
KEYCODE_BUTTON_START    <- 108;
KEYCODE_BUTTON_SELECT   <- 109;
KEYCODE_BUTTON_MODE     <- 110;

AUDIO_CHANNEL_STOPPED   <- 1;
AUDIO_CHANNEL_PAUSED    <- 2;
AUDIO_CHANNEL_PLAYING   <- 3;

EMO_RUNTIME_DELEGATE    <- null;

class emo.MotionEvent {
    param = null;
    function constructor(args) {
        param = args;
    }

    function getPointerId() { return param[0]; }
    function getAction()    { return param[1]; }
    function getX() { return param[2]; }
    function getY() { return param[3]; }
    function getEventTime() { return param[4] + (param[5] / 1000); }
    function getDeviceId()  { return param[6]; }
    function getSource() { return param[7]; }

    function toString() {
        local sb = "";
        for(local i = 0; i < param.len(); i++) {
            sb = sb + param[i] + " ";
        }
        return sb;
    }
}

class emo.KeyEvent {
    param = null;
    function constructor(args) {
        param = args;
    }
    function getAction() { return param[0]; }
    function getKeyCode() { return param[1]; }
    function getRepeatCount() { return param[2]; }
    function getMetaState() { return param[3]; }
    function getEventTime() { return param[4] + (param[5] / 1000); }
    function getDeviceId()  { return param[6]; }
    function getSource() { return param[7]; }

    function toString() {
        local sb = "";
        for(local i = 0; i < param.len(); i++) {
            sb = sb + param[i] + " ";
        }
        return sb;
    }
}

class emo.SensorEvent {
    param = null;
    function constructor(args) {
        param = args;
    }

    function getType() { return param[0]; }
    function getAccelerationX() { return param[1]; }
    function getAccelerationY() { return param[2]; }
    function getAccelerationZ() { return param[3]; }

    function toString() {
        local sb = "";
        for(local i = 0; i < param.len(); i++) {
            sb = sb + param[i] + " ";
        }
        return sb;
    }
}

class emo.AudioChannel {

    id        = null;
    manager   = null;

    function constructor(_id, _manager) {
        id = _id;
        manager = _manager;
    }

    function load(file) {
        local runtime = emo.Runtime();
        if (runtime.os() == OS_ANDROID) {
            file = ANDROID_SOUNDS_DIR + file;
        }
	    return manager.load(id, file);
	}
    function play()  { return manager.play(id); }
    function pause() { return manager.pause(id); }
    function stop()  { return manager.stop(id); }
    function seek(pos) { return manager.seek(id, pos); }
    function getVolume() { return manager.getVolume(id); }
    function setVolume(vol) { return manager.setVolume(id, vol); }
    function getMaxVolume() { return manager.getMaxVolume(id); }
    function getMinVolume() { return manager.getMinVolume(id); }
    function setLoop(enable) {
        return manager.setLoop(id, enable ? EMO_YES : EMO_NO);
    }
    function isLoop() {
        return manager.isLoop(id) == EMO_YES ? true : false;
    }
    function getState() { return manager.getState(id); }
    function close() { return manager.close(id); }
}

function emo::Audio::createChannel(id) {
    return emo.AudioChannel(id, this);
}

class emo.Sprite {

    name   = null;
    stage  = emo.Stage();
    runtime = emo.Runtime();

    id     = -1;
    loaded = false;

    /*
     * sprite = Sprite("aaa.png");
     */
    function constructor(rawname) {
        name = this.getResourceName(rawname);
        id = stage.createSprite(name);
    }

    function getResourceName(rawname) {
        if (runtime.os() == OS_ANDROID) {
            rawname = ANDROID_GRAPHICS_DIR + rawname;
        }
        return rawname;
    }

    /*
     * sprite.load();
     * sprite.load(x, y);
     */
    function load(x = 0, y = 0, width = null, height = null) {
        local status = EMO_NO_ERROR;
        if (!loaded) {

            status = stage.loadSprite(id, x, y, width, height);

            if (status == EMO_NO_ERROR) {
                loaded = true;
            }
        }
        return status;
    }
	
    function show() { return stage.show(id); }
    function hide() { return stage.hide(id); }
    function alpha(a = null) { return stage.alpha(id, a); }
    function red  (r = null) { return stage.red  (id, r); }
    function green(g = null) { return stage.green(id, g); }
    function blue (b = null) { return stage.blue (id, b); }

    function isLoaded() { return loaded; }

    function getX() { return stage.getX(id); }
    function getY() { return stage.getY(id); }
    function getZ() { return stage.getZ(id); }
    function getWidth()  { return stage.getWidth(id); }
    function getHeight() { return stage.getHeight(id); }

    function getScale()  { return stage.getScaleX(id); }
    function getScaleX() { return stage.getScaleX(id); }
    function getScaleY() { return stage.getScaleY(id); }
    function getAngle()  { return stage.getAngle(id); }

    function contains(x, y) {
        return x >= this.getX() && x <= getX() + getWidth() &&
               y >= this.getY() && y <= getY() + getHeight();
    }

    function collidesWith(other) {
        return this.getX() < other.getX() + other.getWidth() && other.getX() < this.getX() + this.getWidth() &&
            this.getY() < other.getY() + other.getHeight() && other.getY() < this.getY() + this.getHeight();
    }

    function _cmp(other) {
        if (this.getId() == other.getId())  return 0;
        if (this.getId() >  other.getId())  return 1;
        return -1;
    }

    /*
     * sprite.move(x, y);
     * sprite.move(x, y, z);
     */
    function move(x, y, z = 0) {
        return stage.move(id, x, y, z);
    }

    /*
     * sprite.scale(scaleX, scaleY)
     * sprite.scale(scaleX, scaleY, centerX, centerY)
     */
    function scale(scaleX, scaleY, centerX = null, centerY = null) {
        return stage.scale(id, scaleX, scaleY, centerX, centerY);
    }

    /*
     * sprite.rotate(angle);
     * sprite.rotate(angle, centerX, centerY);
     * sprite.rotate(angle, centerX, centerY, axis);
     */
    function rotate(angle, centerX = null, centerY = null, axis = null) {
        return stage.rotate(id, angle, centerX, centerY, axis);
    }

    /*
     * sprite.color(red, green, blue);
     * sprite.color(red, green, blue, alpha);
     */
    function color(red, green, blue, alpha = null) {
        return stage.color(id, red, green, blue, alpha);
    }

    function remove() {
        local status = EMO_NO_ERROR;
        if (loaded) {
            status = stage.remove(id);
            loaded = false;
        }
        return status;
    }

    function getId() {
        return id;
    }
}

class emo.SpriteSheet extends emo.Sprite {

	function constructor(rawname, frameWidth, frameHeight, border = 0, margin = 0, frameIndex = 0) {
        name = base.getResourceName(rawname);
        id = stage.createSpriteSheet(name, frameIndex, frameWidth, frameHeight, border, margin);
	}
	
    /*
     * sprite.loadSheet(x, y);
     * sprite.loadSheet(x, y, frameIndex);
     */
    function load(x, y, frameIndex = 0) {
        local status = EMO_NO_ERROR;
        if (!loaded) {
			setFrame(frameIndex);
            status = stage.loadSprite(id, x, y);

            if (status == EMO_NO_ERROR) {
                loaded = true;
            }
        }
        return status;
    }

    /*
     * sprite.animate(startFrame, frameCount, interval);
     * sprite.animate(startFrame, frameCount, interval, loopCount = 0);
     */
    function animate(startFrame, frameCount, interval, loopCount = 0) {
        return stage.animate(id, startFrame, frameCount, interval, loopCount);
    }

    function pause() {
        return stage.pause(id);
    }

    function pauseAt(frameIndex) {
        return stage.pauseAt(id, frameIndex);
    }

    function setFrame(frameIndex) {
        return pauseAt(frameIndex);
    }

    function stop() {
        return stage.stop(id);
    }
}

class emo.Rectangle extends emo.Sprite {
	function constructor() {
		name = null;
        id = stage.createSprite(name);
	}
}

function emo::Stage::load(obj) {

    if (EMO_RUNTIME_DELEGATE != null &&
             EMO_RUNTIME_DELEGATE.rawin("onDispose")) {
        EMO_RUNTIME_DELEGATE.onDispose();
        EMO_RUNTIME_DELEGATE = null;
    }

    EMO_RUNTIME_DELEGATE = obj;
    if (EMO_RUNTIME_DELEGATE != null &&
             EMO_RUNTIME_DELEGATE.rawin("onLoad")) {
        EMO_RUNTIME_DELEGATE.onLoad();
    }
}

function emo::_onLoad() { 
    if (emo.rawin("onLoad")) {
        emo.onLoad();
    }
}

function emo::_onGainedFocus() {
    if (emo.rawin("onGainedFocus")) {
        emo.onGainedFocus();
    }
    if (EMO_RUNTIME_DELEGATE != null &&
             EMO_RUNTIME_DELEGATE.rawin("onGainedFocus")) {
        EMO_RUNTIME_DELEGATE.onGainedFocus();
    }
}

function emo::_onLostFocus() {
    if (emo.rawin("onLostFocus")) {
        emo.onLostFocus();
    }
    if (EMO_RUNTIME_DELEGATE != null &&
             EMO_RUNTIME_DELEGATE.rawin("onLostFocus")) {
        EMO_RUNTIME_DELEGATE.onLostFocus();
    }
}

function emo::_onDispose() {
    if (emo.rawin("onDispose")) {
        emo.onDispose();
    }
    if (EMO_RUNTIME_DELEGATE != null &&
             EMO_RUNTIME_DELEGATE.rawin("onDispose")) {
        EMO_RUNTIME_DELEGATE.onDispose();
    }
} 

function emo::_onError(msg) {
    if (emo.rawin("onError")) {
        emo.onError(msg);
    }
    if (EMO_RUNTIME_DELEGATE != null &&
             EMO_RUNTIME_DELEGATE.rawin("onError")) {
        EMO_RUNTIME_DELEGATE.onError(msg);
    }
}

function emo::_onDrawFrame(dt) {
    if (emo.rawin("onDrawFrame")) {
        emo.onDrawFrame(dt);
    }
    if (EMO_RUNTIME_DELEGATE != null &&
             EMO_RUNTIME_DELEGATE.rawin("onDrawFrame")) {
        EMO_RUNTIME_DELEGATE.onDrawFrame(dt);
    }
}

function emo::_onLowMemory() {
    if (emo.rawin("onLowMemory")) {
        emo.onLowMemory();
    }
    if (EMO_RUNTIME_DELEGATE != null &&
             EMO_RUNTIME_DELEGATE.rawin("onLowMemory")) {
        EMO_RUNTIME_DELEGATE.onLowMemory();
    }
}

function emo::_onMotionEvent(...) {
    local mevent = emo.MotionEvent(vargv);
    if (emo.rawin("onMotionEvent")) {
        emo.onMotionEvent(mevent);
    }
    if (EMO_RUNTIME_DELEGATE != null &&
             EMO_RUNTIME_DELEGATE.rawin("onMotionEvent")) {
        EMO_RUNTIME_DELEGATE.onMotionEvent(mevent);
    }
}

function emo::_onKeyEvent(...) {
    local kevent = emo.KeyEvent(vargv);
    if (emo.rawin("onKeyEvent")) {
        emo.onKeyEvent(kevent);
    }
    if (EMO_RUNTIME_DELEGATE != null &&
             EMO_RUNTIME_DELEGATE.rawin("onKeyEvent")) {
        EMO_RUNTIME_DELEGATE.onKeyEvent(kevent);
    }
}

function emo::_onSensorEvent(...) {
    local sevent = emo.SensorEvent(vargv);
    if (emo.rawin("onSensorEvent")) {
        emo.onSensorEvent(sevent);
    }
    if (EMO_RUNTIME_DELEGATE != null &&
             EMO_RUNTIME_DELEGATE.rawin("onSensorEvent")) {
        EMO_RUNTIME_DELEGATE.onSensorEvent(sevent);
    }
}

function emo::_onCallback(...) {
    if (emo.rawin("onCallback")) {
        emo.onCallback(vargv[0], vargv[1]);
    }
    if (EMO_RUNTIME_DELEGATE != null &&
             EMO_RUNTIME_DELEGATE.rawin("onCallback")) {
        EMO_RUNTIME_DELEGATE.onCallback(vargv[0], vargv[1]);
    }
}
