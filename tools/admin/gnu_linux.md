<!-- Header -->
# :penguin: GNU/Linux :kiwi_fruit: :strawberry: :blueberries:

<!-- File Structure -->
___
## *Filesystem Hierarchy Standard*
##### [Linux Foundation FHS Official Document](https://refspecs.linuxfoundation.org/FHS_3.0/fhs-3.0.pdf)
<div align="center"><img src="../../images/linux_structure.png"></div><hr/>

<!-- Boot Process -->
## :white_circle: *System Initialization Process*

<!-- BIOS Process -->
#### :small_blue_diamond: [Under BIOS (Basic Input/Output System)](https://wiki.archlinux.org/title/Arch_boot_process#Boot_loader)
1. The Linux system is switched on, followed by the POST (power-on-self-test) process being executed.
2. After POST, the BIOS will initialize the hardware necessary for boot (disk, keyboard controllers, etc.). The BIOS is stored on a ROM chip within the motherboard.
3. BIOS then launches the first 440 bytes of the MBR (Master Boot Record) on the first disk in the BIOS disk order. <p align="center">The Master Boot Record (MBR) is the first 512 bytes of a storage device. It contains an operating system bootloader and the storage device's partition table. It plays an important role in the boot process under BIOS systems.</p>
4. The boot loader's first stage in the MBR boot code then launches its second stage code (if any) from either:
    * The next disk sectors after the MBR, i.e. the so called post-MBR gap (only on a MBR partition table).
    * A partition's or a partitionless disk's volume boot record (VBR).
    * BIOS Boot Partition (GRUB on BIOS/GPT only).
5. Boot loader is launched!
6. The boot loader then loads an operating system by either chain-loading or directly loading the operating system kernel. The boot loader is responsible for loading the kernel image and the initial RAM disk or filesystem into memory.
<!-- UEFI image -->
<p align="center">
  <img src="../../images/bios.png?raw=true" alt="initramfs image"/>
</p>

<!-- UEFI Process -->
#### :small_orange_diamond: [Under UEFI (Unified Extensible Firmware Interface)](https://wiki.archlinux.org/title/Arch_boot_process#Boot_loader)
1. Linux system is switched on, followed by POST (power-on-self-test) process being executed.
2. UEFI will then initialize the hardware required for booting (disk, keyboard controllers, etc.).
3. UEFI firmware reads its Boot Manager data in Non-volatile RAM (NVRAM) to determine which EFI application to launch and what disk/partition from. <p align="center">The EFI system partition (also called ESP) is an OS independent partition that acts as the storage place for the EFI bootloaders, applications and drivers to be launched by the UEFI firmware.</p>
4. Firmware launches the EFI application as defined in the boot entry of the firmware's boot manager.
<!-- UEFI image -->
<p align="center">
  <img src="../../images/uefi.png?raw=true" alt="initramfs image"/>
</p>


<!-- initramfs -->
___
## :white_circle: *Initial RAM Disk*
<!-- initramfs Paragraph (1) -->
<p>The sole purpose of initramfs is to mount the root filesystem. At boot time, the boot loader loads the Linux kernel and the initramfs image into its memory, starting the kernel. The initramfs filesystem image will provide kernel functionality for the Linux filesystem, and will manage device drivers for mass storage controllers with a facility called udev (user device). Here is a list of initramfs responsibilities:</p>
<!-- initramfs image -->
<p align="center">
  <img src="../../images/initramfs.png?raw=true" alt="initramfs image"/>
</p>
<!-- initramfs Paragraph (2) -->
The mount program will then notify the Linux OS that the filesystem is ready for use using the mount point. If succesful, initramfs is cleared from RAM and the init program on the root filesystem (/sbin/init) is executed.


<!-- Boot Process -->
## :white_circle: *Init Daemons*
<!-- init Process -->
#### :small_blue_diamond: [Init](https://wiki.archlinux.org/title/init)
After the kernel has mounted the root filesystem and set up its hardware, the kernel runs */sbin/init*. The daemon **init** is the first process to run, and it will end up starting the necessary components to get the Linux system started. Although the Linux Kernel was originaly built with the init daemon, modern Linux systems would shift to the systemd init daemon to manage their systems.
<!-- systemd Process -->
#### :small_orange_diamond: [Systemd](https://wiki.archlinux.org/title/systemd)
The init daemon **systemd** takes an aggressive parallel approach to system services management. This allows for services to be ran simultaneously! Systemd uses Unit Dependencies to reference what a service wants/requires to run properly. The file */sbin/init* now points to */lib/systemd/systemd*.<br /><br />
**Systemd** uses **targets** to group units together via dependencies and as standardized synchronization points. **Targets** are similar to **init** runlevels, but act different in their own way. Here is a list of **systemd** targets for reference:

##### [(List of Systemd Targets)](https://wiki.archlinux.org/title/systemd#Targets)
systemd Target | Description
:------ |:------:
runlevel0.target, halt.target, poweroff.target | System shutdown
runlevel1.target, rescue.target | Single-user mode
runlevel2.target, multi-user.target | Local multiuser without remote network
runlevel3.target, multi-user.target | Full multiuser with network
runlevel4.target | Unused/User-defined
runlevel5.target, graphical.target | Full multiuser with network and display manager
runlevel6.target, reboot.target | System reboot

<!-- Unit File Example -->
##### [(Example of a Systemd Unit File)](https://wiki.archlinux.org/title/systemd#Writing_unit_files)
```
[Unit]
Description=Horningfoo

[Service]
ExecStart=/usr/sbin/foo-daemon

[Install]
WantedBy=default.target
```

<!-- OS Linux Family -->
## :white_circle: *Inodes, Hard links, and Soft links*
<!-- Family List -->
<p>There are three main Linux operating system families that administrators need to be aware of. These are: Debian, Red Hat, and SUSE. A majority of Linux distrobutions stem from one of these three families. Below I have listed the lower level and upper level software package managers for their respective distrobutions! (see image). </p>









<!-- Linux Websites for Reading -->
___
## Resources & Works Cited

<!-- LFCA -->
#### LFCA Training Path
Platform | Class ID | Name | Complete?
:------|:------:|:------:|:------:
edX Courses | [LFS101x](https://courses.edx.org/dashboard) | Introduction to Linux | ❌
edX Courses | [LFS162x](https://courses.edx.org/dashboard) | Introduction to DevOps & Site Reliability | ❌
edX Courses | [LFS151x](https://courses.edx.org/dashboard) | Introduction to Cloud Infrastructure Technologies | ❌
Linux Foundation | [LFD102x](https://training.linuxfoundation.org/) | A Beginner's Guide to Open Source Software Development | ❌
Linux Foundation | [LFS151x](https://training.linuxfoundation.org/) | Introduction to Cloud Infrastructure Technologies | ❌
Linux Foundation | [LFS151x](https://training.linuxfoundation.org/) | Introduction to Cloud Infrastructure Technologies | ❌

<!-- Reading -->
#### :open_book: Reading & Magazines :open_book:
Company | Title | Comments
:------ |:------:|:--------:
Linux New Media | [Linux Magazine](https://www.linux-magazine.com) | Specialized in smart, insightful articles on open source tools and real-world Linux.
Linux New Media | [Admin Magaizine](https://www.admin-magazine.com/) | Articles on Security, Network Monitoring, Cloud Computing, DevOps, Storage, and more!
Linux New Media | [FOSSlife](https://www.fosslife.org/) | Provides resources for free and open source software to help build a career with FOSS!

IEEE Standard (Works Cited)
:------
“Arch Linux,” archlinux.org. [Online]. Available: https://archlinux.org/
“Gentoo Wiki,” wiki.gentoo.org. [Online]. Available: https://wiki.gentoo.org/wiki/Main_Page.