setenv bootargs earlycon=sbi root=/dev/mmcblk0p3 rootwait
load ${devtype} ${devnum}:${distro_bootpart} ${kernel_addr_r} boot/Image
load ${devtype} ${devnum}:${distro_bootpart} ${fdt_addr_r} boot/hifive-unleashed-a00.dtb
booti ${kernel_addr_r} - ${fdt_addr_r}
