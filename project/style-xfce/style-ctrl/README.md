
# style-ctrl-xfce

## Install

``` sh
mkdir -p "$HOME/bin"

wget 'https://raw.githubusercontent.com/samwhelp/play-ubuntu-20.04-plan/master/project/style-xfce/style-ctrl/style-ctrl-xfce' -O "$HOME/bin/style-ctrl-xfce"

chmod 755 "$HOME/bin/style-ctrl-xfce"
```

Or Run

``` sh
curl -fsSL 'https://raw.githubusercontent.com/samwhelp/play-ubuntu-20.04-plan/master/project/style-xfce/style-ctrl/install.sh' | bash
```

Or Run

``` sh
wget 'https://raw.githubusercontent.com/samwhelp/play-ubuntu-20.04-plan/master/project/style-xfce/style-ctrl/install.sh' -q -O - | bash
```


## Howto


### Help

``` sh
$ style-ctrl-xfce
```

or

``` sh
$ style-ctrl-xfce help
```

### Main Usage

```
## get or set

$ style-ctrl-xfce wm_theme [name]
$ style-ctrl-xfce ui_theme [name]
$ style-ctrl-xfce icon_theme [name]
$ style-ctrl-xfce cursor_theme [name] [size]
```


### Debug

``` sh
$ export DEBUG_SC_CTRL=true
```
