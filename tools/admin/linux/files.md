<!--Processes-->
## :japanese_ogre: *Files and File Management* :japanese_ogre:
___

<!--General-->
### :sushi: General Process Info
In Linux, a **process** is an instance of one (or more) tasks executing on the system. One Linux command could contain several processes when ran. Processes will use system resources and perpherals as they are required.

The Linux system has many processes that are identified by unique **process ID**s (PID). **PID**'s are used to track:
- Process State
- CPU Usage
- Memory Usage
- Location in Memory
___

<!--Process_Types-->
### :rice_ball: Process Types
###### Types in Linux
- **User Process** = User processes are the most common type of process. This is a process that is initiated by a user account, and the process will run in user space.
- **Daemon Process** = Processes that are ran continuously. These processes are usually initiated during startup, then subsequently wait on a user/system to request their service.
- **Kernel Process** = Kernel processes have full access to kernel data structures and only execute in kernel space. Unfortunately changing kernel processes might involve recompiling parts of the Linux kernel.
- **Thread Process** = Tasks ran under the main process, and are scheduled & run by the system on an individual business. Can be identified by the **Thread ID (TID)**. Within a multi-threaded process, each thread has their own **TID**, and will share the same **PID**.

###### Parent and Child Processes
- **Parent Process** = Every process on the Linux OS is created when the process executes the fork() system call except PID1 (***init | systemd***). The process that implemented the fork() system call is the **parent process**. They also create child processes during run-time.
- **Child Process** = Processes that are created by Parent processes during run-time. Child processes can also be identified by their parent process ID (PPID).

###### Background and Foreground Job Processing
- **Foreground Process** = Commands run through an interactive shell (ex. gnome-terminal) are foreground processes by default. This means the administrator must wait for the command to complete before issuing a new one.
- **Background Process** = Background processes will be executed at a lower priority and be ran in the background as a job. This allows administrators to run commands within the same interactive shell while the job is running.

Running a command as a _Background Process_:
```
$ command &
```
___
































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

[OPTIONS]
-s, --symbolic
    make symbolic links instead of hard links
    
-t, --target-directory=DIRECTORY
              specify the DIRECTORY in which to create the links
```
<!-- Hard/Soft Link Images -->
<p align="center">(Hard link Explained)</p>
<p align="center">
  <img src="../../../images/hardlink.png?raw=true" alt="initramfs image"/>
</p>
<p align="center">(Soft link Explained)</p>
<p align="center">
  <img src="../../../images/softlink.png?raw=true" alt="initramfs image"/>
</p>


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

[OPTIONS]
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
