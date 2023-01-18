#!/usr/bin/env bash
mkdir Recovery
cd Recovery
repo init -u https://github.com/ONE-WearOS/manifest_twrp_onewear.git -b twrp-9.0
repo sync
export username="${1}"
if [ -z "${username}" ]; then
    echo -e "Please enter a username"
    read -r username
fi

