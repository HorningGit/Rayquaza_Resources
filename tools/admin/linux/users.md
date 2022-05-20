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

To add a new group, use the [groupadd](https://man7.org/linux/man-pages/man8/groupadd.8.html) command:
```
$ groupadd [groupname]
```
To change a group name, use the [groupmod](https://man7.org/linux/man-pages/man8/groupmod.8.html) command:
```
$ groupmod -n [new_group] [old_group]
```
To change a group ID, use the [groupmod](https://man7.org/linux/man-pages/man8/groupmod.8.html) command:
```
$ groupmod -g [new_group_ID] [groupname]
```

Permission | Abreviation | Octal Code
:------|:------:|:------:
Read | r | 4
Write Access | w | 2
Execute | x | 1
Read and Execute | rx | 5
Read and Write | rw | 5
Read, Write, and Execute | rwx | 7
