#include <jni.h>

#include <android/asset_manager.h>
#include <android/log.h>
#include <android_native_app_glue.h>

#define LOG(...)                                                               \
  ((void)__android_log_print(ANDROID_LOG_INFO, "NativeExample", __VA_ARGS__))

void android_main(struct android_app *state) {
  while (1) {
    int ident;
    int events;
    struct android_poll_source *source;

    while ((ident = ALooper_pollAll(-1, NULL, &events, (void **)&source)) >= 0) {
      if (source != NULL)
        source->process(state, source);
    }
  }
}
