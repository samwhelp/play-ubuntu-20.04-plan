
# Prototype cwm


## Spec

* [keybind](spec-keybind.md)
* [mousebind](spec-mousebind.md)

## Note

* note-ubuntu-20.04 / [cwm](https://samwhelp.github.io/note-ubuntu-20.04/read/subject/cwm/)


## Tool

* [run-bspwm-on-xephyr](../../tool/xephyr/develop-tool/run-cwm-on-xephyr/)


## Link

* https://github.com/leahneukirchen/cwm
* [https://en.wikipedia.org/wiki/Cwm_(window_manager)](https://en.wikipedia.org/wiki/Cwm_(window_manager))


## Package

* [cwm](https://packages.ubuntu.com/focal/cwm)


## Manpage

* $ man [openbsd-cwm](http://manpages.ubuntu.com/manpages/focal/en/man1/openbsd-cwm.1.html)
* $ man [cwmrc](http://manpages.ubuntu.com/manpages/focal/en/man5/cwmrc.5.html)


## Config File Path

* [~/.cwmrc](config/cwm/kb1/cwmrc)
* [/usr/local/bin/cwm-session.sh](config/xsession/cwm-session.sh)


## Howto

### build-install

``` sh
$ ./build-install.sh
```

or

``` sh
$ make build-install
```

### install

``` sh
$ ./install.sh
```

or

``` sh
$ make install
```


### package-install

``` sh
$ ./package-install.sh
```

or

``` sh
$ make package-install
```


### config-install

``` sh
$ ./config-install.sh
```

or

``` sh
$ make config-install
```
