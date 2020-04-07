
$ dpkg -L gnome-builder | grep gtksourceview

```
/usr/share/gtksourceview-3.0
/usr/share/gtksourceview-3.0/styles
/usr/share/gtksourceview-3.0/styles/builder-dark.style-scheme.xml
/usr/share/gtksourceview-3.0/styles/builder.style-scheme.xml
/usr/share/gtksourceview-4
/usr/share/gtksourceview-4/styles
/usr/share/gtksourceview-4/styles/builder-dark.style-scheme.xml
/usr/share/gtksourceview-4/styles/builder.style-scheme.xml
```


$ dpkg -S /usr/share/gtksourceview-3.0/styles/

```
gnome-builder, xubuntu-artwork, libgtksourceview-3.0-common: /usr/share/gtksourceview-3.0/styles
```

$ dpkg -S /usr/share/gtksourceview-4/styles

```
gnome-builder, libgtksourceview-4-common: /usr/share/gtksourceview-4/styles
```
