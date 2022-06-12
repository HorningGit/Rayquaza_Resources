https://www.baeldung.com/linux/bash-alias-vs-script-vs-new-function

## Bash (Bourne-Again Shell) Resources
- [Bash | Home Page](https://www.gnu.org/software/bash/)
- [Bash | Documentation](https://www.gnu.org/software/bash/manual/)
- [Bash | GitHub](https://github.com/golang)
- [Bash | Examples of Go Programs/Scripts](https://golangexample.com/)
- [Bash | Git for Windows (Git Bash)](https://gitforwindows.org/)

### Environment Variables
- Use the command [**env**](https://www.man7.org/linux/man-pages/man1/env.1.html) to view the Linux system's current environment variables.
```
$ env
```
- Use the command [**set**](https://man7.org/linux/man-pages/man1/set.1p.html) to display (or configure) all Bash shell settings, variables, and functions.
```
$ set
```

## Aliases, Scripts, and Functions
#### Aliases
The command [**alias**](https://www.man7.org/linux/man-pages/man1/alias.1p.html) is used for creating a shortened version of a long command or series of commands. Here is some general information about the **alias** command.
- Newly created aliases are not saved by default and must be place in the ~/.bashrc file to be made permanent.
- By default aliases are not able to be used in shell scripts without being configured to do so.
- Long written commands are a primary use for the **alias** command.

- To list all aliases, use the **-p** option.
```
$ alias -p
```
- For example, here we create an alias **la** for a long listing format with all files including hidden.
```
$ alias la="ls -la"
```
#### Scripts

#### Functions
The command [**function**](https://linux.die.net/man/1/function) can be used to simplify a collection of tasks/commands that is to complex to be an alias. Here is some general information regarding the **function** command.
```
$ function name { commands ; }
```
