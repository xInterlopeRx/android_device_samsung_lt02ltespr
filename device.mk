# Copyright (C) 2013 The CyanogenMod Project
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
#

# Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/lt02ltespr/lt02ltespr-vendor.mk)

$(call inherit-product, device/samsung/serrano-common/nfc.mk)

# Device overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/lt02ltespr/overlay

# Media profile
PRODUCT_COPY_FILES += \
       device/samsung/lt02ltespr/media/media_profiles.xml:system/etc/media_profiles.xml

# Sound profiles
PRODUCT_COPY_FILES += \
	device/samsung/lt02ltespr/audio/snd_soc_msm_2x:system/etc/snd_soc_msm/snd_soc_msm_2x \
	device/samsung/lt02ltespr/audio/snd_soc_msm_2x:system/etc/snd_soc_msm/snd_soc_msm_Sitar

# Ramdisk
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/rootdir/etc/init.carrier.rc:root/init.carrier.rc \
#    $(LOCAL_PATH)/rootdir/etc/init.target.rc:root/init.target.rc

#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/rootdir/etc/init.qcom.class_main.sh:system/etc/init.qcom.class_main.sh
        	      
# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml

# Inherit from serrano-common
$(call inherit-product, device/samsung/serrano-common/serrano-common.mk)
