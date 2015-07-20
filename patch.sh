#!/usr/bin/env bash

echo -e $CL_BLU"Cherrypicking for android_system_core - Reboot/shutdown fix"$CL_RST
cd system/core
git fetch https://github.com/TeamCanjica/android_system_core cm-11.0
git cherry-pick 347658ad1b53234b52d32d42fba2a72878b883c5
echo -e $CL_BLU"Cherrypicking for android_system_core - STE Multimedia Fix [3/4]"$CL_RST
git cherry-pick 8aa242d1827875506ce3339d2df3e0fed6f89e42
cd ../..
echo -e $CL_BLU"Cherrypicking for android_frameworks_base - OK Google patch"$CL_RST
cd frameworks/base
git fetch https://github.com/TeamCanjica/android_frameworks_base cm-11.0
git cherry-pick de30387b3c32c2a9cf653590c8454bd002bf0dd1
cd ..
echo -e $CL_BLU"Cherrypicking for android_frameworks_native - Legacy sensors"$CL_RST
cd native
git fetch http://review.cyanogenmod.org/CyanogenMod/android_frameworks_native refs/changes/11/59311/1
git cherry-pick FETCH_HEAD
cd ../..
echo -e $CL_BLU"Cherrypicking for android_art - ART fix"$CL_RST
cd art
git fetch https://github.com/cernekee/android_art monitor-stack-v1
git cherry-pick fc2ac71d0d9e147c607bff9371fe2ef25d8470af
cd ..
echo -e $CL_BLU"Cherrypicking for android_frameworks_av - STE Multimedia Fix [1/4]"$CL_RST
cd frameworks/av
git fetch https://github.com/TeamCanjica/android_frameworks_av cm-11.0
git cherry-pick 87618c1ea54009c2e5e5dfb60060f9cc2e9bcc52
echo -e $CL_BLU"Cherrypicking for android_frameworks_av - STE-OMX: fix getSupportedProfileLevel"$CL_RST
git cherry-pick cfcb60d66b01783c274dc625bf32a44899d1e603
echo -e $CL_BLU"Cherrypicking for android_frameworks_av - STE-OMX: video streaming fix"$CL_RST
git cherry-pick 3dba426da410fadcd757eaa131166e534afbd1a9
cd ..
echo -e $CL_BLU"Cherrypicking for android_frameworks_native - STE Multimedia Fix [2/4]"$CL_RST
cd native
git fetch https://github.com/TeamCanjica/android_frameworks_native cm-11.0
git cherry-pick f5a8698ce9a3568cea95c03302deb068eff765bd
cd ../..
echo -e $CL_BLU"Cherrypicking for android_system_vold - patch to allow switching storages"$CL_RST
cd system/vold
git fetch http://review.cyanogenmod.org/CyanogenMod/android_system_vold refs/changes/15/56515/2
git cherry-pick FETCH_HEAD
cd ../..
echo -e $CL_BLU"Cherrypicking for android_packages_services_Telephony - Low-InCall fix"$CL_RST
cd packages/services/Telephony
git fetch https://github.com/TeamCanjica/android_packages_services_Telephony cm-11.0
git cherry-pick fdf281fdabe5e7517eb96f2faf159bbcc74ae4a6
cd ../../..
#echo -e $CL_BLU"Cherrypicking default RGB Colors fix"$CL_RST
#cd packages/apps/Settings
#git fetch https://github.com/TeamCanjica/android_packages_apps_Settings cm-11.0
#git cherry-pick 76ce30bca51cb4392d7fb4df97ea8eed27f03c2d
#cd ../../.. 
