
## Type

run

``` sh
$ type exec
```

show

```
exec is a shell builtin
```

## Help

run

``` sh
help exec
```

show

```
exec: exec [-cl] [-a name] [command [arguments ...]] [redirection ...]
    Replace the shell with the given command.
    
    Execute COMMAND, replacing this shell with the specified program.
    ARGUMENTS become the arguments to COMMAND.  If COMMAND is not specified,
    any redirections take effect in the current shell.
    
    Options:
      -a name	pass NAME as the zeroth argument to COMMAND
      -c	execute COMMAND with an empty environment
      -l	place a dash in the zeroth argument to COMMAND
    
    If the command cannot be executed, a non-interactive shell exits, unless
    the shell option `execfail' is set.
    
    Exit Status:
    Returns success unless COMMAND is not found or a redirection error occurs.
```

## Manpage

run

``` sh
$ whatis exec
```

show

```
exec (3)             - execute a file
```

run

``` sh
$ sudo apt-get install manpages-posix
```

then run


``` sh
$ whatis exec
```

show

```
exec (3)             - execute a file
exec (1posix)        - execute commands and open, close, or copy file descriptors
```

run

``` sh
$ man exec
```

or run

``` sh
$ man 1posix exec
```

to read [exec](http://manpages.ubuntu.com/manpages/focal/en/man1/exec.1posix.html) manpage


## Link

* [concept/manpage](../../concept/manpage/)

