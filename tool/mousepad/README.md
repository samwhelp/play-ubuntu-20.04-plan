
## gsettings

``` sh
$ gsettings list-recursively | grep mousepad
```

``` sh
$ gsettings list-recursively | grep 'org.xfce.mousepad'
```

``` sh
$ gsettings list-recursively | grep 'org.xfce.mousepad.preferences'
```

## gschema

``` sh
$ dpkg -L mousepad | grep xml
```

``` sh
$ dpkg -L mousepad | grep gschema
```

``` sh
$ view /usr/share/glib-2.0/schemas/org.xfce.mousepad.gschema.xml
```
