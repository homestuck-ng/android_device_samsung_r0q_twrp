#
# Copyright (C) 2023 The Android Open Source Project
# SPDX-License-Identifier: Apache-2.0
#

FDEVICE="r0q"
if [ "$1" = "$FDEVICE" ] || [ "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then
	export TW_DEFAULT_LANGUAGE="en"
	export OF_USE_MAGISKBOOT=1
	export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1
	export OF_DONT_PATCH_ENCRYPTED_DEVICE=1
	export FOX_USE_BASH_SHELL=1
	export FOX_ASH_IS_BASH=1
	export FOX_USE_TAR_BINARY=1
	export FOX_USE_SED_BINARY=1
	export FOX_USE_XZ_UTILS=1
	export FOX_USE_NANO_EDITOR=1
	export OF_ALLOW_DISABLE_NAVBAR=0
	export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
	export OF_SKIP_FBE_DECRYPTION=0
	export OF_DEFAULT_KEYMASTER_VERSION=4.1
	export OF_USE_SAMSUNG_SPECIAL=1
	export OF_MAINTAINER="hs-ui"
	export FOX_VARIANT="FBE"
	export FOX_DELETE_AROMAFM=1
	export OF_SCREEN_H=2340
	export OF_STATUS_H=100
	export OF_STATUS_INDENT_LEFT=48
	export OF_STATUS_INDENT_RIGHT=48
	export OF_HIDE_NOTCH=1
	export OF_CLOCK_POS=1
	# Keep FBE decrypt path enabled; do not set OF_SKIP_FBE_DECRYPTION
	add_lunch_combo twrp_r0q-eng
fi
