#!/bin/bash

adduser guest-prefs --gecos "Guest User Template"
echo "guest-prefs:gup" | chpasswd

mkdir /etc/guest-session
ln -s /home/guest-prefs /etc/guest-session/skel

