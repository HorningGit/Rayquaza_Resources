<!-- Init Daemons -->
___
## :white_circle: *Systemd*
<!-- systemd Process -->
#### :small_orange_diamond: [Systemd](https://wiki.archlinux.org/title/systemd)
Systemd is a collection of programs, daemons, libraries, technologies, and kernel components. The init daemon **systemd** takes an aggressive parallel approach to system services management. This allows for services to be ran simultaneously! **Systemd** uses Unit Dependencies to reference what a service wants/requires to run properly. **Systemd** also supports dependecy management and also has comprehensive logging features. The file */sbin/init* now points to */lib/systemd/systemd* while using systemd as an init daemon.<br /><br />
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
A **unit** in systemd, is simply an object that performs or controls a particular task or action. Systemd uses **units** for:
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
