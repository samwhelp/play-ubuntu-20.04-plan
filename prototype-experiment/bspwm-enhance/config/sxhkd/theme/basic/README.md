
run

``` sh
$ dpkg -L bspwm | grep 'examples/sxhkdrc'
```

show

```
usr/share/doc/bspwm/examples/sxhkdrc
```

run

``` sh
cp $(dpkg -L bspwm | grep 'examples/sxhkdrc') ./config/on/main.conf
```
