# ASUS Zenfone 5 root

Little script, which will root your ASUS Zenfone 5.

## Tested devices

- ASUS Zenfone 5 (T00F/T00J) with firmware WW-2.22.40.54

## Requirements

    adb
    fastboot

## Usage for linux

If you're on linux, run `root.sh` script and follow instructions.

## Usage for other systems

I don't have time for develop scripts for other systems, but you can root your phone manually.

- Enable USB debugging mode in your phone.
- Connect your phone with computer.
- Open terminal in `asus-zenfone-5-root` directory.
- Unlock fastboot


    fastboot flash fastboot files/root/fastboot.img
    fastboot reboot-bootloader

- Unlock bootloader (this can take up to 3 minutes, please be patient)


    fastboot flash dnx files/vanilla/dnx_fwr_ctp_a500cg.bin
    fastboot flash ifwi files/root/ifwi_ctp_a500cg.bin
    fastboot reboot-bootloader

- Root phone


    fastboot flash recovery files/root/recovery.img
    fastboot flash update files/root/dummy.zip
    adb reboot bootloader

- Restore vanilla files


    fastboot flash fastboot files/vanilla/fastboot.img
    fastboot flash recovery files/vanilla/recovery.img
    fastboot flash dnx files/vanilla/dnx_fwr_ctp_a500cg.bin
    fastboot flash ifwi files/vanilla/ifwi_ctp_a500cg.bin
    fastboot reboot

## Authors

- Mateusz Jagiełło (http://sigo.pl)
- Vipin Arumugham (http://www.facebook.com/zenfoneindia)
- shakalaca (http://23pin.logdown.com/)
