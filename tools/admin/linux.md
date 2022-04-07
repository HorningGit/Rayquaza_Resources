## :mountain_snow: :penguin: Linux :kiwi_fruit: :strawberry:

<!-- File Structure -->
___
### Filesystem Hierarchy Standard
<div align="center"><img src="../../images/linux_structure.png"></div><hr/>

<!-- Boot Process -->
### System Initialization Process for BIOS/UEFI

#### Under BIOS (Basic Input/Output System)
- **(1)** Linux system is switched on, followed by the POST (power-on-self-test) process being executed.
- **(2)** After POST, the BIOS will initialize the hardware required for booting (disk, keyboard controllers, etc.).
- **(3)** BIOS then launches the first 440 bytes of the MBR (Master Boot Record) on the first disk in the BIOS disk order.
  - *The Master Boot Record (MBR) is the first 512 bytes of a storage device. It contains an operating system bootloader and the storage device's partition table. It plays an important role in the boot process under BIOS systems.*
- **(4)** The boot loader's first stage in the MBR boot code then launches its second stage code (if any) from either:
  - *next disk sectors after the MBR, i.e. the so called post-MBR gap (only on a MBR partition table).*
  - *a partition's or a partitionless disk's volume boot record (VBR).*
  - *the BIOS boot partition (GRUB on BIOS/GPT only).*
- **(5)** Boot loader is launched!
- **(6)** The boot loader then loads an operating system by either chain-loading or directly loading the operating system kernel.

<!-- Linux Websites for Reading -->
___
### Aritcles & Magazines
Company | Title | Comments
:------ |:------:|:--------:
Linux New Media | [Linux Magazine](https://www.linux-magazine.com) | Specialized in smart, insightful articles on open source tools and real-world Linux.
Linux New Media | [Admin Magaizine](https://www.admin-magazine.com/) | Articles on Security, Network Monitoring, Cloud Computing, DevOps, Storage, and more!
Linux New Media | [FOSSlife](https://www.fosslife.org/) | Test
