#!/usr/bin/env bash
DIR="~/bin"
if [ -d "$DIR" ]; then
  ln -s /usr/bin/python2 ~/bin/python
else
  mkdir ~/bin
  PATH=~/bin:$PATH
  ln -s /usr/bin/python2 ~/bin/python
fi
cd Recovery
if [ -d "device/mobvoi/rubyfish" ]; then
  export ALLOW_MISSING_DEPENDENCIES=true; . build/envsetup.sh; lunch omni_rubyfish-eng; mka recoveryimage
  cp out/target/product/rubyfish/recovery.img ../rubyfish_recovery.img
else
  echo "Device RUBYFISH not downloaded"
fi

if [ -d "device/mobvoi/rubyfish" ]; then
  export ALLOW_MISSING_DEPENDENCIES=true; . build/envsetup.sh; lunch omni_rover-eng; mka recoveryimage
  cp out/target/product/rover/recovery.img ../rover_recovery.img
else
  echo "Device ROVER not downloaded"
fi


if [ -d "device/mobvoi/rubyfish" ]; then
  export ALLOW_MISSING_DEPENDENCIES=true; . build/envsetup.sh; lunch omni_ricefish-eng; mka recoveryimage
  cp out/target/product/ricefish/recovery.img ../ricefish_recovery.img
else
  echo "Device RICEFISH not downloaded"
fi

echo "All completed, u can exit now"
