#!/usr/bin/env bash

## From:
## https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=362394#forumpost362394

cat > ~/.local/share/applications/ibus-restart.desktop << EOF
[Desktop Entry]
Name=Restart ibus
Name[zh_TW]=Restart ibus
Comment=Restart ibus-daemon
Comment[zh_TW]=重新啟動 ibus-daemon
Exec=ibus restart
Icon=ibus
Terminal=false
Type=Application
Categories=System;Utility;
StartupNotify=false
X-GNOME-AutoRestart=false
X-GNOME-Autostart-Notify=false
EOF

