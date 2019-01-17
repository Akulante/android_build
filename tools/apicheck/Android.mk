# Copyright (C) 2007-2008 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

ifneq ($(TARGET_BUILD_PDK),true)
LOCAL_PATH := $(call my-dir)

# the hat script
# ============================================================
include $(CLEAR_VARS)
LOCAL_IS_HOST_MODULE := true
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE := apicheck
<<<<<<< HEAD

include $(BUILD_SYSTEM)/base_rules.mk

$(LOCAL_BUILT_MODULE): $(HOST_OUT_JAVA_LIBRARIES)/doclava$(COMMON_JAVA_PACKAGE_SUFFIX)
$(LOCAL_BUILT_MODULE): $(LOCAL_PATH)/etc/apicheck | $(ACP)
	@echo -e ${CL_CYN}"Copy:"${CL_RST}" $(PRIVATE_MODULE) ($@)"
	$(copy-file-to-new-target)
	$(hide) chmod 755 $@
=======
LOCAL_SRC_FILES := etc/apicheck
LOCAL_REQUIRED_MODULES := doclava
include $(BUILD_PREBUILT)
>>>>>>> android_build/lineage-15.1

# Apicheck is now part of Doclava -- See external/doclava.
endif
