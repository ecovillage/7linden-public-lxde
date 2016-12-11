#!/bin/bash

adduser guest-prefs --disabled-password --gecos "Guest User Template"
echo "guest-prefs:gup" | chpasswd

mkdir /etc/guest-session
ln -s /home/guest-prefs /etc/guest-session/skel


mkdir -p /home/guest-prefs/.config/autostart
cat << EOF > /home/guest-prefs/.config/autostart/autostart.desktop
[Desktop Entry]
Type=Application
Exec=chromium-browser
EOF

chown -R guest-prefs:guest-prefs /home/guest-prefs/.config
