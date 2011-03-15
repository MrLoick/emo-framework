
#define SQUIRREL_VM_INITIAL_STACK_SIZE 1024
#define SQUIRREL_MAIN_SCRIPT "emomain.nut"

#define EMO_NO_ERROR    0x0000

void emo_init_display(struct engine* engine);
void emo_term_display(struct engine* engine);
void emo_draw_frame(struct engine* engine);

int32_t emo_handle_input(struct android_app* app, AInputEvent* event);

void emo_gained_focus(struct engine* engine);
void emo_lost_focus(struct engine* engine);
