<!--Processes-->
# :japanese_ogre: *Process Management* :japanese_ogre:
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

<!--Process_States-->
### :ramen: Process States
[Process State Image](https://www.baeldung.com/linux/process-states)

###### List of Process States
- (R) = RUNNING & RUNNABLE
  - Running ~ Actively running and allocated to CPU/CPU core or thread.
  - Runnable ~ Process is ready to be run, but CPU is not currently ready. The RUNNABLE process will then be thrown into a process queue.
- (D) = UNINTERRUPTABLE_SLEEP
  - This process state will wait for system resources to become available before transitioning the process to a running state 'R'. This process will not listen to signals.
- (S) = INTERRRUPTABLE_SLEEP
  - This state will react to signals and resource availablility.
- (T) = STOPPED
  - Linux can stop a process by sending the _SIGTSTOP_ or _SIGTSTP_ signals to the process.
- (Z) = ZOMBIE
  - After a process is complete/terminated, the process will send the _SIGCHLD_ signal to its parent process. This will turn the process into a Zombie Process.
___

### :fried_shrimp: Load Averages
The **load average** is the average system load on a system for a defined amount of time. It's calculated by processes that are:
- Running Processes
- Runnable Processes
- Sleeping Processes (Interruptable & Uninterruptable)

Use the command [uptime](https://man7.org/linux/man-pages/man1/uptime.1.html) to retrieve the system's load average:
```
[NAME]
  uptime - Tell how long the system has been running

[USAGE]
  $ uptime [options]

[OPTIONS]
  -p, --pretty      Show only running time of system
  -s, --since       system up since
  
[USEFUL COMMANDS]
  $ uptime  | grep -o 'load.*'       = Grep out load averages
```
This will display an output similar to the following:
```
03:09:12 up 50 days, 32 min, 3 users, load average: 0.44, 0.31, 0.12
```

The load average can be broken down into its three components:
1. **First Value** - CPU utilization rate for the past 1 minute(s) on the Linux system.
2. **Second Value** - CPU utilization rate for the past 5 minute(s) on the Linux system.
3. **Third Value** - CPU utilization rate for the past 15 minute(s) on the Linux system.
___

<!--Process_Monitoring-->
### :bento: Process Monitoring
Here are some of the most commonly used commands for process monitoring:
- ps = Displays process statistics in a snapshot. (Scripts, Extracting Data to Pipelines, etc.)
- top = Displays process statistics continuously. (Real-time Anaylsis)

1. For a Snapshot of Linux processes, use the [ps](https://man7.org/linux/man-pages/man1/ps.1.html) command:
```
[NAME]
  ps - report a snapshot of current processes.
  
[USAGE]
  $ ps [options]
  
[SORT PROCESSES]
  -a        # Display all processes on a terminal, with exception of group leaders.
  -f        # Display a full listing.
  -elf      # Display one line of info for every thread.
```

2. For displaying Real-time Linux processes, use the [top](https://man7.org/linux/man-pages/man1/top.1.html) command:
```
[NAME]
  top - display Linux processes
  
[USAGE]
  $ top [options]
  
[SORT PROCESSES]
  (M)       # Sort by the Memory Percentage (%MEM) column.
  (N)       # Sort by the PID (Process ID) column.
  (T)       # Sort by TIME+ column
  (P)       # Sort by the CPU Percentage (%CPU) column.
```

###### Fields from the top command
Field | Name | Description
:------|:------:|:------:
PID | Process ID | The task's unique process ID.
User | Username | Task Owner's Username
PR | Priority | The scheduling priority of the task. If "rt" is seen, task is using real time scheduling priority.
NI | Nice Value | Nice values are user-space values used to control the priority of a process. The nice value range is -20 to +19 where -20 is highest, 0 default and +19 is lowest.
VIRT | Used Virtual Memory (kb) | The total amount of used virtual memory in kilobytes.
RES | Used Physical Memory (kb) | The total amount of used physical memory in kiloytes.
SHR | Used Shared Memory (kb) | The total amount of used shared memory in kilobytes.
S | Status | Current Process State
%CPU | % of CPU Time | The task's share of the elapsed CPU time since the last screen update, expressed as a percentage of total CPU time.
%MEM | % of Physical Memory | Percentage of the total phyical memory being occupied by the process.
TIME+ | Total CPU Time | Total CPU time the task has used since it started.
Command | Command Name | Name of the command with its file extension.
___

<!--Process_Monitoring-->
### :takeout_box: Process Scheduling
Here are some of the most commonly used commands for process monitoring:
- at
- cron
- sleep

```
* * * * * command to be executed
– – – – –
| | | | |
| | | | +—– day of week (0 – 6) (Sunday=0)
| | | +——- month (1 – 12)
| | +——— day of month (1 – 31)
| +———– hour (0 – 23)
+————- min (0 – 59)
```
