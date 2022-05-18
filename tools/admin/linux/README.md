<!-- Header -->
# :penguin: GNU/Linux :kiwi_fruit:

<!--Modules-->
<center>
 <table>
  <tr>
   <td align="center"><a href="tools/admin/git.md"><img src="./images/hdd.png" width="50px;" height="50px;" alt="Boot Process"/><br /><b>Boot Process</b></a></td>
   <td align="center"><a href="./systemd.md"><img src="./images/system.png" width="50px;" height="50px;" alt="Systemd"/><br /><b>Systemd</b></a></td>
   <td align="center"><a href="./processmgmt.md"><img src="./images/cpu.png" width="50px;" height="50px;" alt="Process Management"/><br /><b>Process Management</b></a></td>
   <td align="center"><a href="./packagemgmt.md"><img src="./images/pkg.png" width="50px;" height="50px;" alt="Package Management"/><br /><b>Package Management</b></a></td>
   <td align="center"><a href="./files.md"><img src="./images/file.png" width="50px;" height="50px;" alt="File Management"/><br /><b>File Management</b></a></td>
 </table>
</center>


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

<!-- Works Cited -->
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
<div align="center"><img src="../../../images/linux_structure.png"></div><hr/>
