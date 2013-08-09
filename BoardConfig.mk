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

# inherit from common
-include device/motorola/omap4-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/motorola/umts_yangtze/BoardConfigVendor.mk

# Processor
TARGET_BOOTLOADER_BOARD_NAME := umts_yangtze

# Kernel
BOARD_KERNEL_CMDLINE := omap_wdt.timer_margin=60 oops=panic console=/dev/null rw mem=1023M@0x80000000 vram=4084K omapfb.vram=0:4080K,1:4K init=/init ip=off mmcparts=mmcblk1:p6(pds),p7(utags),p12(boot),p13(recovery),p14(cdrom),p15(misc),p16(cid),p17(kpanic),p18(system),p19(cache),p20(userdata) mot_sst=1 androidboot.bootloader=0x0A78
BOARD_KERNEL_BASE := 0x80000000
BOARD_PAGE_SIZE := 0x4096
