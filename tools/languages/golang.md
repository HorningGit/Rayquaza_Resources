## Golang (Go) Resources
- [Golang | Home Page](https://go.dev/)
- [Golang | Documentation](https://go.dev/doc/)
- [Golang | GitHub](https://github.com/golang)
- [Golang | Examples of Go Programs/Scripts](https://golangexample.com/)

### Cheat Sheet

* Run your program:

```
go run <file path>
```
* Create a new module:

```
go mod init <module path>
```

* Compile your app package:

```
go build <package path>
```

* Install and run from a remote location:

```
go install github.com/bregman-arie/myApp
bin/myApp
```

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
