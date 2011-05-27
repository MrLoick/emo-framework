#import "EmoStage.h"
#import "EmoEngine_glue.h"

@implementation EmoStage
@synthesize width, height, viewport_width, viewport_height;
@synthesize dirty;

- (id)init {
    self = [super init];
    if (self != nil) {
		loaded = FALSE;
		dirty = TRUE;
    }
    return self;
}
-(BOOL)loadBuffer {
    loaded = FALSE;
	dirty = TRUE;
	
    indices[0] = 0;
    indices[1] = 1;
    indices[2] = 2;
    indices[3] = 3;
	
    positions[0] = 0;
    positions[1] = 0;
    positions[2] = 0;
	
    positions[3] = 0;
    positions[4] = 1;
    positions[5] = 0;
	
    positions[6] = 1;
    positions[7] = 1;
    positions[8] = 0;
	
    positions[9]  = 1;
    positions[10] = 0;
    positions[11] = 0;
	
    clearGLErrors("EmoStage:loadBuffer");
	
    glGenBuffers(2, vbo);
	
    glBindBuffer(GL_ARRAY_BUFFER, vbo[0]);
    glBufferData(GL_ARRAY_BUFFER, sizeof(float) * 12, positions, GL_STATIC_DRAW);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, vbo[1]);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(short) * 4, indices, GL_STATIC_DRAW);
	
	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
	glBindBuffer(GL_ARRAY_BUFFER, 0);

	loaded = printGLErrors("Could not create OpenGL buffers");
	
	return loaded;
}

-(GLuint)getPositionPointer {
	return vbo[0];
}

-(GLuint)getIndicePointer {
	return vbo[1];
}

-(BOOL)onDrawFrame:(NSTimeInterval)dt {
    if (dirty) {
        glViewport(0, 0, viewport_width, viewport_height); 
        glMatrixMode(GL_PROJECTION);
        glLoadIdentity();
        glOrthof(0, width, height, 0, -1, 1);
        dirty = FALSE;
    }
	
    glClearColor(0, 0, 0, 1);
    glClear(GL_COLOR_BUFFER_BIT);
	return TRUE;
}

-(void)unloadBuffer{
    if (!loaded) return;
	
    glDeleteBuffers(2, vbo);
    loaded = FALSE;
}
-(void)setSize:(GLint)_width height:(GLint)_height {
	width  = _width;
	height = _height;
	viewport_width  = _width;
	viewport_height = _height;
	
	dirty = TRUE;
}
-(void)invertSize {
	[self setSize:height height:width];
}
@end