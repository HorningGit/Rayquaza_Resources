<!--Processes-->
##  :busts_in_silhouette: *User Control* :busts_in_silhouette:
___

<!--General-->
### :cactus: General User Info
In Linux, a **process** is an instance of one (or more) tasks executing on the system. One Linux command could contain several processes when ran. Processes will use system resources and perpherals as they are required.

Two Types of Users:
- Root or Super User
- Normal Users
___

<!--Process_Types-->
### :palm_tree: Groups
###### Types in Linux
- **User Process** = User processes are the most common type of process. This is a process that is initiated by a user account, and the process will run in user space.
- **Daemon Process** = Processes that are ran continuously. These processes are usually initiated during startup, then subsequently wait on a user/system to request their service.
- **Kernel Process** = Kernel processes have full access to kernel data structures and only execute in kernel space. Unfortunately changing kernel processes might involve recompiling parts of the Linux kernel.
- **Thread Process** = Tasks ran under the main process, and are scheduled & run by the system on an individual business. Can be identified by the **Thread ID (TID)**. Within a multi-threaded process, each thread has their own **TID**, and will share the same **PID**.
