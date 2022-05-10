<!--Processes-->
## :white_circle: *Process Management*

<!--Image-->
In Linux, a **process** is an instance of one (or more) tasks executing on the system. One Linux command could contain several processes when ran. Processes will use system resources and perpherals as they require.

The Linux system has many processes that are identified by unique **process ID**s (PID). **PID**'s are used to track:
- Process State
- CPU Usage
- Memory Usage
- Location in Memory

if the process is a child process, it can also be identified by it's parent process ID (PPID).

- **Parent Process** = Processes that create child processes during run-time.
- **Child Process** = Processes that are created by Parent processes during run-time.

<!--Process_Types-->
#### :small_blue_diamond: Process Types
- **User Process** =
- **Daemon Process** =
- **Kernel Process** = Kernel processes have full access to kernel data structures and only execute in kernel space. Unfortunately changing kernel processes might involve recompiling parts of the Linux kernel.

<!--Process_States-->
#### :small_orange_diamond: Process States
- 'D' = UNINTERRUPTABLE_SLEEP
- 'R' = RUNNING & RUNNABLE
- 'S' = INTERRRUPTABLE_SLEEP
- 'T' = STOPPED
- 'Z' = ZOMBIE
