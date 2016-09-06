#!/bin/bash

# Wipe guest-prefs browser and shell history
cat /dev/null > /home/guest-prefs/.bash_history

rm -r /home/guest-prefs/.cache/chromium/Default/*
# .config/chromium ...
