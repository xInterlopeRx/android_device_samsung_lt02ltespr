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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# Inherit from common serrano
-include device/samsung/serrano-common/BoardConfigCommon.mk

# Inherit from the proprietary version
-include vendor/samsung/lt02ltespr/BoardConfigVendor.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := lt02ltespr,SM-T217S

# Kernel
TARGET_KERNEL_VARIANT_CONFIG := cyanogen_lt02lte_spr_defconfig

TARGET_BOARD_PLATFORM_GPU := qcom-adreno305

# Bluetooth
BOARD_BLUEDROID_VENDOR_CONF :=
BOARD_BLUETOOTH_USES_HCIATTACH_PROPERTY :=
BLUETOOTH_HCI_USE_MCT := true
QCOM_BT_USE_SMD_TTY := true

# WiFi
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/prima_wlan.ko"
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/prima_wlan/parameters/fwpath"
WIFI_DRIVER_MODULE_NAME     := "prima_wlan"
WIFI_DRIVER_MODULE_ARG      :=
WIFI_DRIVER_MODULE_AP_ARG   :=
WIFI_DRIVER_FW_PATH_P2P     :=

# NFC
BOARD_HAVE_NFC := true

TARGET_BOARD_INFO_FILE ?= device/samsung/lt02ltespr/board-info.txt
