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
    --depends lxde\
    --depends libreoffice\
    --depends chromium-browser\
    --license "GPLv3+"\
    --url     "https://github.com/ecovillage/7linden-public-lxde"\
    --maintainer "felix.wolfsteller@gmail.com"

