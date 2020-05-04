

## xcb-xfixes

error message

```
-- Checking for modules 'glib-2.0;glib-2.0>=2.40;gdk-pixbuf-2.0;cairo;x11;xcb-cursor;xcb-randr;xcb-xtest;xcb-xinerama;xcb-shape;xcb-util;xcb-util>=0.3.8;xcb-keysyms;xcb-keysyms>=0.3.4;xcb-icccm;xcb-icccm>=0.3.8;xcb-xfixes;xcb-xkb;xkbcommon;xkbcommon-x11;cairo-xcb;libstartup-notification-1.0;libstartup-notification-1.0>=0.10;xproto;xproto>=7.0.15;libxdg-basedir;libxdg-basedir>=1.0.0;xcb-xrm'
--   No package 'xcb-xfixes' found
```

run

``` sh
$ apt-cache search xcb-xfixes
```

show

```
libxcb-xfixes0 - X C Binding, xfixes extension
libxcb-xfixes0-dev - X C Binding, xfixes extension, development files
```

run

``` sh
$ sudo apt-get install libxcb-xfixes0-dev
```


## Build-Depends


run

``` sh
$ apt-cache showsrc awesome | grep '^Build-Depends:'
```

show

```
Build-Depends: asciidoctor, cmake, debhelper-compat (= 12), imagemagick, libcairo2-dev, libdbus-1-dev, libgdk-pixbuf2.0-dev, libglib2.0-dev, liblua5.3-dev, libpango1.0-dev, libstartup-notification0-dev, libx11-xcb-dev, libxcb-cursor-dev, libxcb-icccm4-dev, libxcb-keysyms1-dev, libxcb-randr0-dev, libxcb-shape0-dev, libxcb-util0-dev, libxcb-xinerama0-dev, libxcb-xkb-dev, libxcb-xrm-dev, libxcb-xtest0-dev, libxdg-basedir-dev, libxkbcommon-dev, libxkbcommon-x11-dev, lua-busted, lua-discount, lua-ldoc, lua-lgi (>= 0.9.2), lua5.3, x11proto-core-dev, xmlto, zsh
```
 
