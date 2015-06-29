# ASUS Zenfone 5 root

Little script, which will root your ASUS Zenfone 5.

## Tested devices

- ASUS Zenfone 5 (T00F/T00J) with WW-2.22.40.54 firmware

## Requirements

- adb
- fastboot

## Usage for linux

If you're on linux, run `root.sh` script in terminal and follow instructions.

    ./bash.sh

## Usage for other systems

I don't have time for develop scripts for other systems, but you can root your phone manually.

1. Download [the rooting script](https://github.com/sigo/asus-zenfone-5-root/archive/master.zip) (about 53.4MiB).
2. Extract downloaded package.
3. Enable USB debugging mode in your phone.
4. Connect your phone with computer.
5. Open terminal in extracted `asus-zenfone-5-root` directory.
6. Reboot to bootloader

    ```
    adb reboot bootloader
    ```

7. Unlock fastboot

    ```
    fastboot flash fastboot files/root/fastboot.img
    fastboot reboot-bootloader
    ```

8. Unlock bootloader (this can take up to 3 minutes, please be patient)
    ```
    fastboot flash dnx files/vanilla/dnx_fwr_ctp_a500cg.bin
    fastboot flash ifwi files/root/ifwi_ctp_a500cg.bin
    fastboot reboot-bootloader
    ```

9. Root phone

    ```
    fastboot flash recovery files/root/recovery.img
    fastboot flash update files/root/dummy.zip
    adb reboot bootloader
    ```

10. Restore vanilla files

    ```
    fastboot flash fastboot files/vanilla/fastboot.img
    fastboot flash recovery files/vanilla/recovery.img
    fastboot flash dnx files/vanilla/dnx_fwr_ctp_a500cg.bin
    fastboot flash ifwi files/vanilla/ifwi_ctp_a500cg.bin
    fastboot reboot
    ```

All done, enjoy your rooted phone.

## Authors

- Mateusz Jagiełło (http://sigo.pl)
- Vipin Arumugham (http://www.facebook.com/zenfoneindia)
- shakalaca (http://23pin.logdown.com/)
