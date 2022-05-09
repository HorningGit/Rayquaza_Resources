<!-- Init Daemons -->
## :white_circle: *Systemd*
<!-- systemd Process -->
##### :small_orange_diamond: What is systemd?
Systemd is a collection of programs, daemons, libraries, technologies, and kernel components. When run as first process on boot (as PID 1), it acts as init system that brings up and maintains userspace services. Separate instances are started for logged-in users to start their services. **Systemd** also supports dependecy management and also has comprehensive logging features. The file */sbin/init* now points to */lib/systemd/systemd* while using systemd as an init daemon.<br /><br />

<p align="center">
  <img src="/tools/admin/images/systemdcomponents.png?raw=true" alt="initramfs image"/>
</p>

<!--Utilities-->
___
###### Systemd Service Management Utilities
Tool | Description
:------ |:------:
systemctl | Control the **systemd** system and services.
journalctl | For managing journal, **systemd**'s own logging system.
hostnamectl | Managing hostname
localectl | Configure the system's location and keyboard layout.
timedatectl | Setting the time and date for the system.
systemd-cgls | Show contents of cgroup
systemadm | Front-end for systemctl

**Systemd** uses **targets** to group units together via dependencies and as standardized synchronization points. **Targets** are similar to **init** runlevels, but act different in their own way. Here is a list of **systemd** targets for reference:
<!-- Systemd Targets -->
###### List of Systemd Targets
systemd Target | Description
:------ |:------:
runlevel0.target, halt.target, poweroff.target | System shutdown
runlevel1.target, rescue.target | Single-user mode
runlevel2.target, multi-user.target | Local multiuser without remote network
runlevel3.target, multi-user.target | Full multiuser with network
runlevel4.target | Unused/User-defined
runlevel5.target, graphical.target | Full multiuser with network and display manager
runlevel6.target, reboot.target | System reboot

#### :small_orange_diamond: [Unit (systemd)](https://wiki.archlinux.org/title/systemd)
<!-- Unit File Example -->
**Systemd** uses Unit Dependencies to reference what a service wants/requires to run properly. A **unit** in systemd, is simply an object that performs or controls a particular task or action. Systemd uses **units** for:
- Controlling system services (Start/Stop/Configure)
- Organizing the boot process!
- Maintaining tasks and processes!
- Creating sockets!
- Mounting file-systems and initializing hardware!


###### Example of a Systemd Unit File
```
[Unit]
Description=Horningfoo

[Service]
ExecStart=/usr/sbin/foo-daemon

[Install]
WantedBy=default.target
```