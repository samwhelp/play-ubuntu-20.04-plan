
## download source package

``` sh
$ apt-get source tint2
```

## log-001

run

``` sh
$ grep apply tint2-16.7/* -R -i
```

show

```
...
tint2-16.7/src/tint2conf/properties.c:void applyClicked(GtkWidget *widget, gpointer data)
tint2-16.7/src/tint2conf/properties.c:    applyClicked(widget, data);
tint2-16.7/src/tint2conf/properties.c:    button = gtk_button_new_from_stock("gtk-apply");
tint2-16.7/src/tint2conf/properties.c:    gtk_dialog_add_action_widget(GTK_DIALOG(view), button, GTK_RESPONSE_APPLY);
tint2-16.7/src/tint2conf/properties.c:    gtk_signal_connect(GTK_OBJECT(button), "clicked", GTK_SIGNAL_FUNC(applyClicked), NULL);
tint2-16.7/src/tint2conf/main.h:void menuApply();
tint2-16.7/src/tint2conf/main.c:          GTK_STOCK_APPLY,
...
```

## log-002

run

``` sh
grep 'void applyClicked' 'tint2-16.7/src/tint2conf/properties.c' -A 17
```

show

```
void applyClicked(GtkWidget *widget, gpointer data)
{
    gchar *filepath = get_current_theme_path();
    if (filepath) {
        if (config_is_manual(filepath)) {
            gchar *backup_path = g_strdup_printf("%s.backup.%lld", filepath, (long long)time(NULL));
            copy_file(filepath, backup_path);
            g_free(backup_path);
        }

        config_save_file(filepath);
    }
    int unused = system("killall -SIGUSR1 tint2 || pkill -SIGUSR1 -x tint2");
    (void)unused;
    g_free(filepath);
    refresh_current_theme();
}
```

* https://gitlab.com/o9000/tint2/-/blob/master/src/tint2conf/properties.c#L192

## test-001

run

``` sh
killall -SIGUSR1 tint2 || pkill -SIGUSR1 -x tint2
```


