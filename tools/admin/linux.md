<!-- Header -->
# :banana: :penguin: Linux :kiwi_fruit: :strawberry:

<!-- File Structure -->
___
## Filesystem Hierarchy Standard
<div align="center"><img src="../../images/linux_structure.png"></div><hr/>

<!-- Boot Process -->
## System Initialization Process for BIOS/UEFI :vertical_traffic_light:

<!-- BIOS Process -->
#### :white_circle: Under BIOS (Basic Input/Output System)
- **(1)** Linux system is switched on, followed by the POST (power-on-self-test) process being executed.
- **(2)** After POST, the BIOS will initialize the hardware required for booting (disk, keyboard controllers, etc.). The BIOS is stored on a ROM chip on the motherboard.
- **(3)** BIOS then launches the first 440 bytes of the MBR (Master Boot Record) on the first disk in the BIOS disk order.
  - *The Master Boot Record (MBR) is the first 512 bytes of a storage device. It contains an operating system bootloader and the storage device's partition table. It plays an important role in the boot process under BIOS systems.*
- **(4)** The boot loader's first stage in the MBR boot code then launches its second stage code (if any) from either:
  - *next disk sectors after the MBR, i.e. the so called post-MBR gap (only on a MBR partition table).*
  - *a partition's or a partitionless disk's volume boot record (VBR).*
  - *the BIOS boot partition (GRUB on BIOS/GPT only).*
- **(5)** Boot loader is launched!
- **(6)** The boot loader then loads an operating system by either chain-loading or directly loading the operating system kernel. The boot loader is responsible for loading the kernel image and the initial RAM disk or filesystem into memory.
<div align="center"><img src="../../images/bios.png"></div><hr/>

<!-- UEFI Process -->
#### :large_blue_circle: Under UEFI (Unified Extensible Firmware Interface)
- **(1)** Linux system is switched on, followed by the POST (power-on-self-test) process being executed.
- **(2)** UEFI will then initialize the hardware for booting (disk, keyboard controllers, etc.).
- **(3)** UEFI firmware reads its Boot Manager data in Non-volatile random-access memory (NVRAM) to determine which EFI application to launch and what disk/partition from.
  - *The EFI system partition (also called ESP) is an OS independent partition that acts as the storage place for the EFI bootloaders, applications and drivers to be launched by the UEFI firmware.*
- **(4)** Firmware launches the EFI application as defined in the boot entry in the firmware's boot manager. (see link for list of boot loaders).
<div align="center"><img src="../../images/uefi.png"></div><hr/>

<!-- File Structure -->
## Initial RAM Disk
<p>The only purpose of an initramfs is the mount the root filesystem. At boot time, the boot loader loads the Linux kernel and the initramfs image into its memory and starts the kernel. The initramfs filesystem image will also provide kernel functionality for the needed filesystem and device drivers for mass storage controllers with a facility called udev (user device). Here is a list of initramfs responsibilities:</p>
<div align="center"><img src="../../images/initramfs.png"></div><hr/>

<!-- Linux Websites for Reading -->
___
### :open_book: Reading & Magazines :open_book:
Company | Title | Comments
:------ |:------:|:--------:
Linux New Media | [Linux Magazine](https://www.linux-magazine.com) | Specialized in smart, insightful articles on open source tools and real-world Linux.
Linux New Media | [Admin Magaizine](https://www.admin-magazine.com/) | Articles on Security, Network Monitoring, Cloud Computing, DevOps, Storage, and more!
Linux New Media | [FOSSlife](https://www.fosslife.org/) | Provides resources for free and open source software to help build a career with FOSS!
