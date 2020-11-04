# rocket-linux-porting

## 1. rocket-chip config
  git clone https://github.com/chipsalliance/rocket-chip.git
  using the Configs.scala instead of the rocket-chip/src/main/scala/system/Configs.scala
  in vsim folder
  # make -j1 CONFIG=freechips.rocketchip.system.DefaultConfigRBB
## 2. soc setup
   DDR: @80000000
   uart_16550 : @60000000
   spi: @60020000
## 3. linux porting
    3.1 build Busybox
Busybox is a useful binary tool, or a tools set to be exact. You can integrate many frequently used commands (e.g. cd, ls, echo) into this single program. Our init is also provided by busybox program.

download busybox, by github or by busybox.net both works

cd busybox-1.xx.xx

make allnoconfig - to turn off every configuration option

make menuconfig - then it comes to the GUI of busybox configuration

Here are the configurations you will have to change:

CONFIG_STATIC=y, Build BusyBox as a static binary (no shared libs) in Settings - Build Options
CONFIG_CROSS_COMPILER_PREFIX=riscv64-unknown-linux-gnu-, Cross Compiler prefix in Settings - Build Options
CONFIG_FEATURE_INSTALLER=y, Support --install [-s] to install applet links at runtime in Settings - General Configuration - include busybox applet
CONFIG_INIT=y, init in Init utilities
CONFIG_ASH=y, ash in Shells
CONFIG_MOUNT=y, mount in Linux System Utilities
CONFIG_FEATURE_USE_INITTAB=y, Support reading an inittab file in Init Utilities
Besides the above, you can optional check the following tools in the menuconfig, according to your needs:

Coreutils - cat / chmod / echo / ls / mkdir / mknod / pwd / rm / tty
Linux System Utilities - fdisk / umount
For your convenience, I backup a config_busybox under the /config directory, you can copy it and use it to overwrite the .config under the busybox dir

make -jN (N is the max number of your parallel jobs)

Then you will have a busybox over there.

an inittab is needed to instruct the init program, create a document named as inittab and write the following into it:

::sysinit:/bin/busybox mount -t proc proc /proc
::sysinit:/bin/busybox mount -t tmpfs tmpfs /tmp
::sysinit:/bin/busybox mount -o remount,rw /
::sysinit:/bin/busybox --install -s
/dev/console::sysinit:-/bin/ash
3.2 set up initramfs
We gonna build the file system that stores in the elf image, it will be extract as the root file system when linux is booted.

create files and dirs
mkdir root
cd root
mkdir -p bin etc dev lib proc sbin sys tmp usr usr/bin usr/lib usr/sbin
Then copy our busybox we have built into the filesystem
cp <your_busybox> bin/busybox
make soft links so that busybox can work as the init program
ln -s bin/busybox sbin/init
ln -s bin/busybox init
copy inittab you created above into the /etc
cp <your_inittab_file> etc/inittab
create a character device for the console
sudo mknod dev/console c 5 1
compress it into a cpio file
find . | cpio --quiet -o -H newc | gzip > ../rootfs.cpio.gz
cd ..
then you will find a rootfs.cpio.gz over there, next to the dir root

3.3 compiling Linux
Now we have our initramfs, rootfs.cpio.gz. We can build the linux kernel now.

copy the rootfs.cpio.gz to the riscv-linux dir and go into riscv-linux

cp <your_rootfs.cpio.gz> <path_to_your_riscv-linux>

cd <path_to_your_riscv-linux>

make ARCH=riscv defconfig

make ARCH=riscv menuconfig

the very important change to the defconfig is to enable the initramfs here

in the General Setup
check initial ram filesystem and ram disk (initramfs/initrd) support
fill rootfs.cpio.gz in the blank blow

For your convenience, I backup a config_linux under the /config directory, you can copy it and use it to overwrite the .config under the linux dir

make -jN ARCH=riscv CROSS_COMPILE=riscv64-unknown-linux-gnu- vmlinux

after several minute, there will be a vmlinux under the dir of riscv-linux
## 4. demo
