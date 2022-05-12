<!--Processes-->
## :white_circle: *Process Management*

<!--Image-->
In Linux, a **process** is an instance of one (or more) tasks executing on the system. One Linux command could contain several processes when ran. Processes will use system resources and perpherals as they are required.

The Linux system has many processes that are identified by unique **process ID**s (PID). **PID**'s are used to track:
- Process State
- CPU Usage
- Memory Usage
- Location in Memory

Processes can also be identified by
- **Parent Process** = Every process on the Linux OS is created when the process executes the fork() system call except PID1 (***init | systemd***). The process that implemented the fork() system call is the **parent process**. They also create child processes during run-time.
- **Child Process** = Processes that are created by Parent processes during run-time. Child processes can also be identified by their parent process ID (PPID).
- **Thread Process** = Tasks ran under the main process, and are scheduled & run by the system on an individual business. Can be identified by the **Thread ID (TID)**. Within a multi-threaded process, each thread has their own **TID**, and will share the same **PID**.
___

<!--Process_Types-->
#### :small_blue_diamond: Process Types
Processes can be organized into a few types depending on the task being executed:
- **User Process** = User processes are the most common type of process. This is a process that is initiated by a user account, and the process will run in user space.
- **Daemon Process** = Processes that are ran continuously. These processes are usually initiated during startup, then subsequently wait on a user/system to request their service.
- **Kernel Process** = Kernel processes have full access to kernel data structures and only execute in kernel space. Unfortunately changing kernel processes might involve recompiling parts of the Linux kernel.
___

<!--Process_States-->
#### :small_orange_diamond: Process States
- 'R' = RUNNING & RUNNABLE
  - Running ~ Actively running and allocated to CPU/CPU core or thread.
  - Runnable ~ Process is ready to be run, but CPU is not currently ready. The RUNNABLE process will then be thrown into a process queue.
- 'D' = UNINTERRUPTABLE_SLEEP
- 'S' = INTERRRUPTABLE_SLEEP
- 'T' = STOPPED
- 'Z' = ZOMBIE
___

#### :small_blue_diamond: Load Averages
The **load average** is the average system load on a system for a defined amount of time. It's calculated by processes that are:
- Running Processes
- Runnable Processes
- Sleeping Processes (Interruptable & Uninterruptable)

Use the command **uptime** to retrieve the system's load average:
```
uptime [option]
```
