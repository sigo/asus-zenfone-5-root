#!/bin/bash

echo "Connect your phone with computer and prepare to root"
echo "USB debugging mode must be enabled"
echo "Do not disconnect USB cable while rooting"
echo "Whole process can take up to 10 minutes, please be patient"

cd $(dirname "${0}")

adb wait-for-device
adb reboot bootloader
sleep 20

echo
echo "Unlocking fastboot"
echo "--- log ---"
fastboot flash fastboot files/root/fastboot.img
fastboot reboot-bootloader
echo "--- end log ---"
sleep 20

echo
echo "Unlocking bootloader"
echo "--- log ---"
fastboot flash dnx files/vanilla/dnx_fwr_ctp_a500cg.bin
fastboot flash ifwi files/root/ifwi_ctp_a500cg.bin
fastboot reboot-bootloader
echo "--- end log ---"
sleep 180

echo
echo "Rooting phone"
echo "--- log ---"
fastboot flash recovery files/root/recovery.img
sleep 5
fastboot flash update files/root/dummy.zip
adb wait-for-device
adb reboot bootloader
echo "--- end log ---"
sleep 20

echo
echo "Restoring vanilla files"
echo "--- log ---"
fastboot flash fastboot files/vanilla/fastboot.img
fastboot flash recovery files/vanilla/recovery.img
sleep 5
fastboot flash dnx files/vanilla/dnx_fwr_ctp_a500cg.bin
fastboot flash ifwi files/vanilla/ifwi_ctp_a500cg.bin
fastboot reboot
echo "--- end log ---"

echo
echo "All done, enjoy your rooted phone"
