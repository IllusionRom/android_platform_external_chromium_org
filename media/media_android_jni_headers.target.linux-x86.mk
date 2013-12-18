# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := GYP
LOCAL_MODULE := media_media_android_jni_headers_gyp
LOCAL_MODULE_STEM := media_android_jni_headers
LOCAL_MODULE_SUFFIX := .stamp
LOCAL_MODULE_TAGS := optional
gyp_intermediate_dir := $(call local-intermediates-dir)
gyp_shared_intermediate_dir := $(call intermediates-dir-for,GYP,shared)

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES :=


### Generated for rule "media_media_gyp_media_android_jni_headers_target_generate_jni_headers":
# "{'inputs': ['../base/android/jni_generator/jni_generator.py', '../android_webview/build/jarjar-rules.txt'], 'process_outputs_as_sources': '1', 'extension': 'java', 'outputs': ['$(gyp_shared_intermediate_dir)/media/jni/%(INPUT_ROOT)s_jni.h'], 'rule_name': 'generate_jni_headers', 'rule_sources': ['base/android/java/src/org/chromium/media/AudioManagerAndroid.java', 'base/android/java/src/org/chromium/media/AudioRecordInput.java', 'base/android/java/src/org/chromium/media/MediaCodecBridge.java', 'base/android/java/src/org/chromium/media/MediaDrmBridge.java', 'base/android/java/src/org/chromium/media/MediaPlayerBridge.java', 'base/android/java/src/org/chromium/media/MediaPlayerListener.java', 'base/android/java/src/org/chromium/media/WebAudioMediaCodecBridge.java'], 'action': ['../base/android/jni_generator/jni_generator.py', '--input_file', '$(RULE_SOURCES)', '--output_dir', '$(gyp_shared_intermediate_dir)/media/jni', '--optimize_generation', '0', '--jarjar', '../android_webview/build/jarjar-rules.txt', '--ptr_type', 'long'], 'message': 'Generating JNI bindings from $(RULE_SOURCES)'}":
$(gyp_shared_intermediate_dir)/media/jni/AudioManagerAndroid_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/media/jni/AudioManagerAndroid_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/media/jni/AudioManagerAndroid_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/media/jni/AudioManagerAndroid_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/media/jni/AudioManagerAndroid_jni.h: $(LOCAL_PATH)/media/base/android/java/src/org/chromium/media/AudioManagerAndroid.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(LOCAL_PATH)/android_webview/build/jarjar-rules.txt $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/media/jni; cd $(gyp_local_path)/media; ../base/android/jni_generator/jni_generator.py --input_file base/android/java/src/org/chromium/media/AudioManagerAndroid.java --output_dir "$(gyp_shared_intermediate_dir)/media/jni" --optimize_generation 0 --jarjar ../android_webview/build/jarjar-rules.txt --ptr_type long

.PHONY: media_media_android_jni_headers_gyp_rule_trigger
media_media_android_jni_headers_gyp_rule_trigger: $(gyp_shared_intermediate_dir)/media/jni/AudioManagerAndroid_jni.h

$(gyp_shared_intermediate_dir)/media/jni/AudioRecordInput_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/media/jni/AudioRecordInput_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/media/jni/AudioRecordInput_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/media/jni/AudioRecordInput_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/media/jni/AudioRecordInput_jni.h: $(LOCAL_PATH)/media/base/android/java/src/org/chromium/media/AudioRecordInput.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(LOCAL_PATH)/android_webview/build/jarjar-rules.txt $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/media/jni; cd $(gyp_local_path)/media; ../base/android/jni_generator/jni_generator.py --input_file base/android/java/src/org/chromium/media/AudioRecordInput.java --output_dir "$(gyp_shared_intermediate_dir)/media/jni" --optimize_generation 0 --jarjar ../android_webview/build/jarjar-rules.txt --ptr_type long

.PHONY: media_media_android_jni_headers_gyp_rule_trigger
media_media_android_jni_headers_gyp_rule_trigger: $(gyp_shared_intermediate_dir)/media/jni/AudioRecordInput_jni.h

$(gyp_shared_intermediate_dir)/media/jni/MediaCodecBridge_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/media/jni/MediaCodecBridge_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/media/jni/MediaCodecBridge_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/media/jni/MediaCodecBridge_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/media/jni/MediaCodecBridge_jni.h: $(LOCAL_PATH)/media/base/android/java/src/org/chromium/media/MediaCodecBridge.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(LOCAL_PATH)/android_webview/build/jarjar-rules.txt $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/media/jni; cd $(gyp_local_path)/media; ../base/android/jni_generator/jni_generator.py --input_file base/android/java/src/org/chromium/media/MediaCodecBridge.java --output_dir "$(gyp_shared_intermediate_dir)/media/jni" --optimize_generation 0 --jarjar ../android_webview/build/jarjar-rules.txt --ptr_type long

.PHONY: media_media_android_jni_headers_gyp_rule_trigger
media_media_android_jni_headers_gyp_rule_trigger: $(gyp_shared_intermediate_dir)/media/jni/MediaCodecBridge_jni.h

$(gyp_shared_intermediate_dir)/media/jni/MediaDrmBridge_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/media/jni/MediaDrmBridge_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/media/jni/MediaDrmBridge_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/media/jni/MediaDrmBridge_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/media/jni/MediaDrmBridge_jni.h: $(LOCAL_PATH)/media/base/android/java/src/org/chromium/media/MediaDrmBridge.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(LOCAL_PATH)/android_webview/build/jarjar-rules.txt $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/media/jni; cd $(gyp_local_path)/media; ../base/android/jni_generator/jni_generator.py --input_file base/android/java/src/org/chromium/media/MediaDrmBridge.java --output_dir "$(gyp_shared_intermediate_dir)/media/jni" --optimize_generation 0 --jarjar ../android_webview/build/jarjar-rules.txt --ptr_type long

.PHONY: media_media_android_jni_headers_gyp_rule_trigger
media_media_android_jni_headers_gyp_rule_trigger: $(gyp_shared_intermediate_dir)/media/jni/MediaDrmBridge_jni.h

$(gyp_shared_intermediate_dir)/media/jni/MediaPlayerBridge_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/media/jni/MediaPlayerBridge_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/media/jni/MediaPlayerBridge_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/media/jni/MediaPlayerBridge_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/media/jni/MediaPlayerBridge_jni.h: $(LOCAL_PATH)/media/base/android/java/src/org/chromium/media/MediaPlayerBridge.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(LOCAL_PATH)/android_webview/build/jarjar-rules.txt $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/media/jni; cd $(gyp_local_path)/media; ../base/android/jni_generator/jni_generator.py --input_file base/android/java/src/org/chromium/media/MediaPlayerBridge.java --output_dir "$(gyp_shared_intermediate_dir)/media/jni" --optimize_generation 0 --jarjar ../android_webview/build/jarjar-rules.txt --ptr_type long

.PHONY: media_media_android_jni_headers_gyp_rule_trigger
media_media_android_jni_headers_gyp_rule_trigger: $(gyp_shared_intermediate_dir)/media/jni/MediaPlayerBridge_jni.h

$(gyp_shared_intermediate_dir)/media/jni/MediaPlayerListener_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/media/jni/MediaPlayerListener_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/media/jni/MediaPlayerListener_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/media/jni/MediaPlayerListener_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/media/jni/MediaPlayerListener_jni.h: $(LOCAL_PATH)/media/base/android/java/src/org/chromium/media/MediaPlayerListener.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(LOCAL_PATH)/android_webview/build/jarjar-rules.txt $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/media/jni; cd $(gyp_local_path)/media; ../base/android/jni_generator/jni_generator.py --input_file base/android/java/src/org/chromium/media/MediaPlayerListener.java --output_dir "$(gyp_shared_intermediate_dir)/media/jni" --optimize_generation 0 --jarjar ../android_webview/build/jarjar-rules.txt --ptr_type long

.PHONY: media_media_android_jni_headers_gyp_rule_trigger
media_media_android_jni_headers_gyp_rule_trigger: $(gyp_shared_intermediate_dir)/media/jni/MediaPlayerListener_jni.h

$(gyp_shared_intermediate_dir)/media/jni/WebAudioMediaCodecBridge_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/media/jni/WebAudioMediaCodecBridge_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/media/jni/WebAudioMediaCodecBridge_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/media/jni/WebAudioMediaCodecBridge_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/media/jni/WebAudioMediaCodecBridge_jni.h: $(LOCAL_PATH)/media/base/android/java/src/org/chromium/media/WebAudioMediaCodecBridge.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(LOCAL_PATH)/android_webview/build/jarjar-rules.txt $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/media/jni; cd $(gyp_local_path)/media; ../base/android/jni_generator/jni_generator.py --input_file base/android/java/src/org/chromium/media/WebAudioMediaCodecBridge.java --output_dir "$(gyp_shared_intermediate_dir)/media/jni" --optimize_generation 0 --jarjar ../android_webview/build/jarjar-rules.txt --ptr_type long

.PHONY: media_media_android_jni_headers_gyp_rule_trigger
media_media_android_jni_headers_gyp_rule_trigger: $(gyp_shared_intermediate_dir)/media/jni/WebAudioMediaCodecBridge_jni.h

### Finished generating for all rules

GYP_GENERATED_OUTPUTS := \
	$(gyp_shared_intermediate_dir)/media/jni/AudioManagerAndroid_jni.h \
	$(gyp_shared_intermediate_dir)/media/jni/AudioRecordInput_jni.h \
	$(gyp_shared_intermediate_dir)/media/jni/MediaCodecBridge_jni.h \
	$(gyp_shared_intermediate_dir)/media/jni/MediaDrmBridge_jni.h \
	$(gyp_shared_intermediate_dir)/media/jni/MediaPlayerBridge_jni.h \
	$(gyp_shared_intermediate_dir)/media/jni/MediaPlayerListener_jni.h \
	$(gyp_shared_intermediate_dir)/media/jni/WebAudioMediaCodecBridge_jni.h

# Make sure our deps and generated files are built first.
LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

LOCAL_GENERATED_SOURCES := \
	$(gyp_shared_intermediate_dir)/media/jni/AudioManagerAndroid_jni.h \
	$(gyp_shared_intermediate_dir)/media/jni/AudioRecordInput_jni.h \
	$(gyp_shared_intermediate_dir)/media/jni/MediaCodecBridge_jni.h \
	$(gyp_shared_intermediate_dir)/media/jni/MediaDrmBridge_jni.h \
	$(gyp_shared_intermediate_dir)/media/jni/MediaPlayerBridge_jni.h \
	$(gyp_shared_intermediate_dir)/media/jni/MediaPlayerListener_jni.h \
	$(gyp_shared_intermediate_dir)/media/jni/WebAudioMediaCodecBridge_jni.h \
	media_media_android_jni_headers_gyp_rule_trigger

GYP_COPIED_SOURCE_ORIGIN_DIRS :=

LOCAL_SRC_FILES :=


# Flags passed to both C and C++ files.
MY_CFLAGS_Debug := \
	--param=ssp-buffer-size=4 \
	-Werror \
	-fno-exceptions \
	-fno-strict-aliasing \
	-Wall \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-m32 \
	-mmmx \
	-march=pentium4 \
	-msse2 \
	-mfpmath=sse \
	-fuse-ld=gold \
	-ffunction-sections \
	-funwind-tables \
	-g \
	-fno-short-enums \
	-finline-limit=64 \
	-Wa,--noexecstack \
	-U_FORTIFY_SOURCE \
	-Wno-extra \
	-Wno-ignored-qualifiers \
	-Wno-type-limits \
	-fno-stack-protector \
	-Os \
	-g \
	-fomit-frame-pointer \
	-fdata-sections \
	-ffunction-sections

MY_DEFS_Debug := \
	'-DANGLE_DX11' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DNO_TCMALLOC' \
	'-DDISABLE_NACL' \
	'-DCHROMIUM_BUILD' \
	'-DUSE_LIBJPEG_TURBO=1' \
	'-DUSE_PROPRIETARY_CODECS' \
	'-DENABLE_CONFIGURATION_POLICY' \
	'-DDISCARDABLE_MEMORY_ALWAYS_SUPPORTED_NATIVELY' \
	'-DSYSTEM_NATIVELY_SIGNALS_MEMORY_PRESSURE' \
	'-DICU_UTIL_DATA_IMPL=ICU_UTIL_DATA_STATIC' \
	'-DUSE_OPENSSL=1' \
	'-DENABLE_EGLIMAGE=1' \
	'-DCLD_VERSION=1' \
	'-DENABLE_PRINTING=1' \
	'-DENABLE_MANAGED_USERS=1' \
	'-D__STDC_CONSTANT_MACROS' \
	'-D__STDC_FORMAT_MACROS' \
	'-DANDROID' \
	'-D__GNU_SOURCE=1' \
	'-DUSE_STLPORT=1' \
	'-D_STLP_USE_PTR_SPECIALIZATIONS=1' \
	'-DCHROME_BUILD_ID=""' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=1' \
	'-DWTF_USE_DYNAMIC_ANNOTATIONS=1' \
	'-D_DEBUG'


# Include paths placed before CFLAGS/CPPFLAGS
LOCAL_C_INCLUDES_Debug := \
	$(PWD)/frameworks/wilhelm/include \
	$(PWD)/bionic \
	$(PWD)/external/stlport/stlport


# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS_Debug := \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wsign-compare \
	-Wno-error=c++0x-compat \
	-Wno-non-virtual-dtor \
	-Wno-sign-promo


# Flags passed to both C and C++ files.
MY_CFLAGS_Release := \
	--param=ssp-buffer-size=4 \
	-Werror \
	-fno-exceptions \
	-fno-strict-aliasing \
	-Wall \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-m32 \
	-mmmx \
	-march=pentium4 \
	-msse2 \
	-mfpmath=sse \
	-fuse-ld=gold \
	-ffunction-sections \
	-funwind-tables \
	-g \
	-fno-short-enums \
	-finline-limit=64 \
	-Wa,--noexecstack \
	-U_FORTIFY_SOURCE \
	-Wno-extra \
	-Wno-ignored-qualifiers \
	-Wno-type-limits \
	-fno-stack-protector \
	-Os \
	-fno-ident \
	-fdata-sections \
	-ffunction-sections \
	-fomit-frame-pointer \
	-fno-unwind-tables \
	-fno-asynchronous-unwind-tables

MY_DEFS_Release := \
	'-DANGLE_DX11' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DNO_TCMALLOC' \
	'-DDISABLE_NACL' \
	'-DCHROMIUM_BUILD' \
	'-DUSE_LIBJPEG_TURBO=1' \
	'-DUSE_PROPRIETARY_CODECS' \
	'-DENABLE_CONFIGURATION_POLICY' \
	'-DDISCARDABLE_MEMORY_ALWAYS_SUPPORTED_NATIVELY' \
	'-DSYSTEM_NATIVELY_SIGNALS_MEMORY_PRESSURE' \
	'-DICU_UTIL_DATA_IMPL=ICU_UTIL_DATA_STATIC' \
	'-DUSE_OPENSSL=1' \
	'-DENABLE_EGLIMAGE=1' \
	'-DCLD_VERSION=1' \
	'-DENABLE_PRINTING=1' \
	'-DENABLE_MANAGED_USERS=1' \
	'-D__STDC_CONSTANT_MACROS' \
	'-D__STDC_FORMAT_MACROS' \
	'-DANDROID' \
	'-D__GNU_SOURCE=1' \
	'-DUSE_STLPORT=1' \
	'-D_STLP_USE_PTR_SPECIALIZATIONS=1' \
	'-DCHROME_BUILD_ID=""' \
	'-DNDEBUG' \
	'-DNVALGRIND' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=0' \
	'-D_FORTIFY_SOURCE=2'


# Include paths placed before CFLAGS/CPPFLAGS
LOCAL_C_INCLUDES_Release := \
	$(PWD)/frameworks/wilhelm/include \
	$(PWD)/bionic \
	$(PWD)/external/stlport/stlport


# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS_Release := \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wsign-compare \
	-Wno-error=c++0x-compat \
	-Wno-non-virtual-dtor \
	-Wno-sign-promo


LOCAL_CFLAGS := $(MY_CFLAGS_$(GYP_CONFIGURATION)) $(MY_DEFS_$(GYP_CONFIGURATION))
LOCAL_C_INCLUDES := $(GYP_COPIED_SOURCE_ORIGIN_DIRS) $(LOCAL_C_INCLUDES_$(GYP_CONFIGURATION))
LOCAL_CPPFLAGS := $(LOCAL_CPPFLAGS_$(GYP_CONFIGURATION))
### Rules for final target.
# Add target alias to "gyp_all_modules" target.
.PHONY: gyp_all_modules
gyp_all_modules: media_media_android_jni_headers_gyp

# Alias gyp target name.
.PHONY: media_android_jni_headers
media_android_jni_headers: media_media_android_jni_headers_gyp

LOCAL_MODULE_PATH := $(PRODUCT_OUT)/gyp_stamp
LOCAL_UNINSTALLABLE_MODULE := true

include $(BUILD_SYSTEM)/base_rules.mk

$(LOCAL_BUILT_MODULE): $(LOCAL_ADDITIONAL_DEPENDENCIES)
	$(hide) echo "Gyp timestamp: $@"
	$(hide) mkdir -p $(dir $@)
	$(hide) touch $@
