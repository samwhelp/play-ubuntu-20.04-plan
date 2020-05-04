

## File Path


| Desktop Entry (xsession) | Exec |
| --- | --- |
| [/usr/share/xsessions/demo-gnome-session.desktop](config/xsession/demo-gnome-session.desktop) | [/usr/bin/demo-gnome-session.sh](config/xsession/demo-gnome-session.sh) |


| Session (gnome-session) |
| --- |
| [/usr/share/gnome-session/sessions/demo-gnome-session.session](config/gnome-session/demo-gnome-session.session) | 


| Desktop Entry | Exec |
| --- | --- |
| [/usr/share/applications/demo-wm.desktop](config/demo/demo-wm.desktop) | [/usr/bin/demo-wm.sh](config/demo/demo-wm.sh) |
| [/usr/share/applications/demo-panel.desktop](config/demo/demo-panel.desktop) | [/usr/bin/demo-panel.sh](config/demo/demo-panel.sh) |


| Desktop Entry (Autostart) | Exec |
| --- | --- |
| [/etc/xdg/autostart/demo-settings-daemon.desktop](config/demo/demo-settings-daemon.desktop) | [/usr/bin/demo-settings-daemon.sh](config/demo/demo-settings-daemon.sh) |
| [/etc/xdg/autostart/demo-applet.desktop](config/demo/demo-applet.desktop) | [/usr/bin/demo-applet.sh](config/demo/demo-applet.sh) |


| Xephyr |
| --- |
| [~/bin/xephyr-run-demo-gnome-session.sh](config/xephyr/xephyr-run-demo-gnome-session.sh) | 


## Howto Test

open terminal 1

install first

``` sh
$ make install
```

then run

``` sh
$ tail -f /var/log/syslog
```

then open terminal 2

and run

``` sh
$ xephyr-run-demo-gnome-session.sh
```




## Usage


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

### config-remove

``` sh
$ ./config-remove.sh
```

or

``` sh
$ make config-remove
```




