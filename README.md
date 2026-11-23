# OrangeFox / TWRP device tree — Samsung Galaxy S22 (r0q, SM-S901E)

Fork: [homestuck-ng/android_device_samsung_r0q_twrp](https://github.com/homestuck-ng/android_device_samsung_r0q_twrp) (`fox_12.1`), based on [yoro1836/android_device_samsung_r0q_twrp](https://github.com/yoro1836/android_device_samsung_r0q_twrp). Used by [hs-ui](https://github.com/homestuck-ng/hs-ui).

## What changed

Upstream left `/data` as classic FDE (`encryptable=footer`) and had `TW_INCLUDE_CRYPTO := false` (a crypto attempt was reverted). One UI on r0q uses **FBE + metadata encryption**. This fork:

- enables `TW_INCLUDE_CRYPTO`, `TW_INCLUDE_CRYPTO_FBE`, `BOARD_USES_QCOM_FBE_DECRYPTION`, `TW_INCLUDE_FBE_METADATA_DECRYPT`
- sets `fileencryption=…+wrappedkey_v0` and `keydirectory=/metadata/vold/metadata_encryption` on `/data`
- keeps Samsung `mdfpp` keystore/gatekeeper and qcom `qcom_decrypt` / `qcom_decrypt_fbe`

Enter the **Android lockscreen PIN / password / pattern** when OrangeFox asks.

## Build (OrangeFox 12.1)

```sh
# after orangefox_sync.sh --branch 12.1
git clone https://github.com/homestuck-ng/android_device_samsung_r0q_twrp.git device/samsung/r0q -b fox_12.1
export ALLOW_MISSING_DEPENDENCIES=true
. build/envsetup.sh
lunch twrp_r0q-eng
mka recoveryimage
```

Or use the Actions workflow in this repo / hs-ui.

## Flash

Odin AP: `OrangeFox-*.img.tar` together with hs-ui `patched-vb.tar` in CP. Do not boot system before opening recovery once.
