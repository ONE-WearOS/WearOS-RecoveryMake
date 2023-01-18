#!/usr/bin/env bash
mkdir Recovery
cd Recovery
repo init -u https://github.com/ONE-WearOS/manifest_twrp_onewear.git -b twrp-9.0
repo sync
git clone -b android-9.0 https://github.com/TeamWin/android_device_qcom_twrp-common device/qcom/common
echo ""
echo ""
echo ""
echo ""
echo ""
export device="${1}"
if [ -z "${device}" ]; then
    echo -e "Please enter if u want clone the device tree for: rubyfish, rover, ricefish or all"
    read -r device
fi

if [ "${device}" == "rubyfish" ]; then
  git clone https://github.com/ONE-WearOS/device_mobvoi_rubyfish.git device/mobvoi/rubyfish
fi

if [ "${device}" == "rover" ]; then
  git clone https://github.com/ONE-WearOS/device_mobvoi_rover.git device/mobvoi/rover
fi

if [ "${device}" == "ricefish" ]; then
  git clone https://github.com/ONE-WearOS/device_mobvoi_ricefish.git device/mobvoi/ricefish
fi

if [ "${device}" == "all" ]; then
  git clone https://github.com/ONE-WearOS/device_mobvoi_rubyfish.git device/mobvoi/rubyfish
  git clone https://github.com/ONE-WearOS/device_mobvoi_rover.git device/mobvoi/rover
  git clone https://github.com/ONE-WearOS/device_mobvoi_ricefish.git device/mobvoi/ricefish
fi

echo ""
echo ""
echo ""
echo ""
echo ""
echo "Finished u can close this window now"
