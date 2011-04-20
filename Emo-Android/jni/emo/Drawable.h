#include <EGL/egl.h>
#include <GLES/gl.h>

#include <string>
#include <hash_map>
#include <squirrel.h>
#include "Image.h"
#include "Util.h"

namespace emo {
    class AnimationFrame {
    public:
        AnimationFrame();
        ~AnimationFrame();
        std::string name;
        int   start;
        int   frameCount;
        int   loop;
        unsigned long interval;
    };

    typedef std::hash_map <std::string, emo::AnimationFrame *> animations_t;

    class Drawable {
    public:

        Drawable();
        ~Drawable();

        std::string name;

        void load();

        bool bindVertex();

        void onDrawFrame();

        void setFrameCount(int count);
        int  getFrameCount();

        GLuint getCurrentBufferId();
        bool isCurrentTexBufferLoaded();

        void setFrameIndex(int index);

        void setTexture(Image* image);

        void deleteBuffer();

        bool  hasSheet;
        bool  animating;
        bool  loaded;
        bool  hasTexture;
        bool  hasBuffer;

        int border;
        int margin;

        float      x;
        float      y;
        float      z;

        int        width;
        int        height;

        float      param_rotate[4];
        float      param_scale[4];
        float      param_color[4];

        void addAnimation(AnimationFrame* animation);
        void setAnimation(std::string name);
        AnimationFrame* getAnimation(std::string name);
        bool deleteAnimation(std::string name);

    protected:

        std::string animationName;

        float      vertex_tex_coords[8];

        int        frame_index;
        GLuint*    frames_vbos;
        int        frameCount;

        Image*     texture;

        int tex_coord_frame_startX();
        int tex_coord_frame_startY();
        float getTexCoordStartX();
        float getTexCoordEndX();
        float getTexCoordStartY();
        float getTexCoordEndY();

        bool frameCountLoaded;

        void deleteAnimations();
        animations_t* animations;

    };
}