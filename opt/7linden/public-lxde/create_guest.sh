#!/bin/bash

adduser guest-prefs --gecos "Guest User Template"
echo "gut" | passwd guest-prefs --stdin

mkdir /etc/guest-session
ln -s /home/guest-prefs /etc/guest-session/skel

