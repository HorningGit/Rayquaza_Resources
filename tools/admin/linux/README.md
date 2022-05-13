<!-- Header -->
# :penguin: GNU/Linux :kiwi_fruit: :strawberry:

<!--Foreward-->
___
##### Command Syntax Interpretation (same syntax as **man** pages)
- Anything between square brackets ("[" and "]") is optional.
- Anything followed by an ellipsis (...") can be repeated.
- Curly braces (“{” and “}”) mean that you should select one of the items separated by vertical bars (“|”).

For example:
```
bork [-x] {on | off} filename ...
```
Could yield:
```
bork on /etc/passwd
bork -x off /etc/passwd /etc/cups
```

<!-- Boot Process -->
___
## :white_circle: *Booting and System Management Daemons*
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
  <!-- BIOS image -->
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

<!-- OS Linux Family -->
___
## :white_circle: *Inodes, Hard links, and Soft links*
  <!-- Inodes -->
#### :small_blue_diamond: [Inodes](https://man7.org/linux/man-pages/man7/inode.7.html)
<p>Each file has an inode containing metadata about the file. An application can retrieve this metadata using the stat command. The stat command can provide the file system information when we provide file name with the -f (–file-system) option.</p>

```
stat -f filename
```
<p>Here is the information we retrieve from the stat command:</p>

<!-- stat command -->
- File: The name of provided file.
- ID: FIle system ID in hexadecimal.
- Namelen: The maximum length (number of char) of a file name.
- Fundamental block size: Total size of each block on the file system.
- Blocks:
   - Total: Total number of blocks in the file system.
   - Free: Total number of free blocks in the file system.
   - Available: Total number of free blocks available for non-root users.
- Inodes:
   - Total: Total number of inodes in the file system.
   - Free: Total number of free inodes in the file system.
  <!-- Hard/Soft Links -->
##### :small_orange_diamond: [Hard links & Symbolic Links](https://linuxize.com/post/how-to-create-symbolic-links-in-linux-using-the-ln-command/)

<!-- Hard link -->
##### [Hard link]
<p>Creating a hard link creates another name for the same data on disk. File names simply point to some data on a system's disk.</p>
<!-- Symlink -->

##### [Symbolic link]
<p>
Soft link is a pointer to a file name. Real file name points to data on disk:
  - Removing symbolic link won't delete original file.
  - Removing file will create a broken symlink.
  - Able to point to objects on different filesystems, partitions, and/or disks.
</p>

```
[NAME]
ln - make links between files

[Options]
-s, --symbolic
    make symbolic links instead of hard links
    
-t, --target-directory=DIRECTORY
              specify the DIRECTORY in which to create the links
```
<!-- Hard/Soft Link Images -->
<p align="center">(Hard link Explained)</p>
<p align="center">
  <img src="../../images/hardlink.png?raw=true" alt="initramfs image"/>
</p>
<p align="center">(Soft link Explained)</p>
<p align="center">
  <img src="../../images/softlink.png?raw=true" alt="initramfs image"/>
</p>


<!-- System Management -->
___
## :white_circle: *Environment Variable Modification*
  <!-- Default Shell EV -->
#### :small_blue_diamond: Changing Default Shell Prompt
```
[PS1 Environment Variable]
- PS1 is a primary prompt variable which holds @\u@\h \W\\$ special bash characters. 
- Display during terminal login.
- Default bash prompt.

[Location]
Default Location = /etc/bashrc

[Modifying]
PS1='[[prod]\u@\h \W]\$' 

[Modified shell prompt]
[[prod]root@hostname ~]#
````

<!-- File Redirection -->
___
## :white_circle: *Find, Redirection & Input/Output*
  <!-- File Streams -->
#### :small_blue_diamond: Standard File Streams
Stream | Symbolic Name | Value | Default
:------ |:------:|:------:|:------:
Standard Input | stdin | 0 | Keyboard
Standard Output | stdout | 1 | Terminal
Standard Error | stderr | 2 | Log File

#### :small_orange_diamond: I/O Redirection
- Change input source of ***filename*** to "input-file"
```
filename < input-file
```
- Configure output of ***filename*** (stdout) to "output-file"
```
filename > output-file
```
- Configure error output of ***filename*** (stderr) to "error-file"
```
filename 2> error-file
```
- Configure standard output & error of ***filename*** to "output-file"
```
filename >& error-file
```
#### :small_blue_diamond: Find Command
```
[NAME]
find - search for files in a directory hierarchy

[Options]
-type f               # File
-type b               # Block
-type s               # Socket
-type d               # Directory
-type l               # Symlink

-atime                # Last accessed/read of inode metadata (file ownership, permissions, etc.)
-ctime                # Last change of inode metadata (file ownership, permissions, etc.)

-size 256k            # Exactly 256KiB 
-size -128c           # Smaller than 128 bytes
-size +5G             # Larger than 2GiB

-exec command {} \;   # Executes "command" on find
```

<!-- Resources & Works Cited -->
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

<!-- Works Cite -->
IEEE Standard (Works Cited)
:------
“Arch Linux,” archlinux.org. [Online]. Available: https://archlinux.org/
“Gentoo Wiki,” wiki.gentoo.org. [Online]. Available: https://wiki.gentoo.org/wiki/Main_Page.
"Linuxize," linuxize.com. [Online]. Available: https://linuxize.com/

<!-- Filesystem Standard -->
___
## :white_circle: *Filesystem Hierarchy Standard*
<!-- Filesystem Image -->
##### [(Linux Foundation FHS Official Document)](https://refspecs.linuxfoundation.org/FHS_3.0/fhs-3.0.pdf)
<div align="center"><img src="../../images/linux_structure.png"></div><hr/>

