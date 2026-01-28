# This Makefile configures project level compilation tools and flags

# Read this documentation for more information and options that you can setup from this file:
# https://developer.android.com/ndk/guides/application_mk.html

# It can be set to a specific platform version, such as 'android-10'. 
# When latest is set, it will use the latest version available at $ANDROID_NDK/platforms
APP_PLATFORM := latest

# You can switch between release/debug builds here:
APP_OPTIM := release

# These are all the target ABIs you're going to build to:
# NOTE: You can build faster by commenting unused ABIs
APP_ABI := arm64-v8a armeabi-v7a x86_64 x86

# You can add flags to the compiler and linker here:
#APP_CFLAGS :=
#APP_CPPFLAGS :=
#APP_LDFLAGS :=
