#!/bin/bash
# Copyright 2016 Felix Wolfsteller
# Released under the GPL3+

# Create 7linden-**.deb

fpm -s empty\
    -t deb\
    -v `cat VERSION`\
    -a all\
    --name "7linden-puplic-lxde"\
    --description "Depend on packages to create a saner public system"\
    --depends vim\
    --depends w3m\
    --depends htop\
    --depends tree\
    --depends lxde\
    --depends lxsession-logout\
    --depends libreoffice\
    --depends chromium-browser\
<<<<<<< HEAD
    --depends zenity\
=======
    --depends chromium-browser\
    --depends language-pack-de\
    --depends language-pack-de-base\
    --depends language-selector-gnome\
<<<<<<< HEAD
>>>>>>> depend on some language packages.
=======
    --depends ntp\
>>>>>>> depend on ntp, lxsession-logout and handy tools.
    --license "GPLv3+"\
    --url     "https://github.com/ecovillage/7linden-public-lxde"\
    --maintainer "felix.wolfsteller@gmail.com"

