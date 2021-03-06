<!--Files-->
# :rainbow: Files & Filesystems :rainbow:

<!--General-->
## :cherries: General File Info
UNIX is commonly described as an system where "everything is file". If it isn't a file, it is a process. These files are also case sensitive. This section will describe some of the GNU/Linux's most important files.

Here are some special exceptions to our famous rule:
- **Directories**
- **Special Files**
- **Links**
- **Domain Sockets**
- **Named Pipes**

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

<!-- Inodes -->
#### :small_blue_diamond: [Inodes](https://man7.org/linux/man-pages/man7/inode.7.html)
<p>Each file has an inode containing metadata about the file. An application can retrieve this metadata using the stat command. The stat command can provide the file system information when we provide file name with the -f (–file-system) option.</p>

```
stat -f filename
```
<p>Here is the information we retrieve from the stat command:</p>

<!-- stat command -->
```
File:          The name of provided file.
ID:            FIle system ID in hexadecimal.
Namelen:       The maximum length (number of char) of a file name.
Block Size:    Total size of each block on the file system.
Blocks:
   Total:      Total number of blocks in the file system.
   Free:       Total number of free blocks in the file system.
   Available:  Total number of free blocks available for non-root users.
Inodes:
   Total:      Total number of inodes in the file system.
   Free:       Total number of free inodes in the file system.
```
  <!-- Hard/Soft Links -->
#### :small_orange_diamond: [Hard links & Symbolic Links](https://linuxize.com/post/how-to-create-symbolic-links-in-linux-using-the-ln-command/)

<!-- Hard link -->
- Creating a **hard link** creates another name for the same data on disk. File names simply point to some data on a system's disk. Hard links will also contain the same inode number & permissions as the orignial file!

```mermaid
flowchart TD;
    B[Hard Link]-->A[Data on Disk]
    C[Hard Link]-->A
```

<!-- Symlink -->
- A **Symbolic link** (sym link / soft link) is a pointer to a file name. Real file name points to data on disk:
  - Removing symbolic link won't delete original file.
  - Removing file will create a broken symlink.
  - Able to point to objects on different filesystems, partitions, and/or disks.
  - Different inode number and permissions as orignal file!

```mermaid
flowchart LR;
    A[Soft/Sym Link]-->B[Hard Link]-->C[Data on Disk]
```

```
[NAME]
ln - make links between files

[OPTIONS]
-s, --symbolic
    make symbolic links instead of hard links
    
-t, --target-directory=DIRECTORY
              specify the DIRECTORY in which to create the links
```
## :cherries: Root
___
## :cherries: _/bin_

___
## ::cherries: _/boot_
## ::cherries: _/dev_

___
## :cherries: _/etc_
<!--Process_Types-->
### :small_blue_diamond: Shell Initialization Files

Shell initialization files can configure the following for shells:
- **Customize shell prompt**
- **Shortcut, Aliases, & Functions**
- **Default Text Editor**
- **Environment Variables**

**Two Categories of Startup Files & Directories**
- **System-wide**
  - _/etc/profile_ = First file read upon Login Shell ; System wide env and startup programs. (PLACE EDITS IN _/etc/profile.d/*_ DIRECTORY)
  - _/etc/bashrc_ = Used for system-wide functions and aliases.
  - _/etc/skel_ = Upon account creation, this directory implements its template files into a user's home directory.
     - .bash_logout
     - .bash_profile
     - .bashrc
- **User-specific** (Not in _/etc_)
  - _~/.bash_profile_ = Call to _~/bashrc_ file.
  - _~/.bashrc_ **(Most Common Default Configuration File)**
  - _~/.bash_login_

**Shell Initialization Map**
<p align="center">
  <img src="images/shell.png?raw=true" alt="initramfs image"/>
</p>

___
## :cherries: _/dev_



<!--Manipulating-->
___
## :cherries: Manipulating Text Files
### :small_blue_diamond: Standard File Streams
Stream | Symbolic Name | Value | Default
:------ |:------:|:------:|:------:
Standard Input | stdin | 0 | Keyboard
Standard Output | stdout | 1 | Terminal
Standard Error | stderr | 2 | Log File

### :small_orange_diamond: I/O Redirection
- Change input source of ***filename*** to "input-file"
```
filename < input-file
```
- Configure output of ***filename*** (stdout) to "output-file" **(WILL OVERWRITE)**
```
filename > output-file
```
- Configure output of ***filename*** (stdout) to "output-file" **(WILL APPEND)**
```
filename >> output-file
```
- Configure error output of ***filename*** (stderr) to "error-file"
```
filename 2> error-file
```
- Configure standard output & error of ***filename*** to "output-file"
```
filename >& error-file
```
