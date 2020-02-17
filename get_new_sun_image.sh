#!/bin/bash

if [[ -f latest_4096_0304.jpg ]] ; then
  rm latest_4096_0304.jpg
fi

wget https://sdo.gsfc.nasa.gov/assets/img/latest/latest_4096_0304.jpg
dconf write "/org/gnome/desktop/background/picture-uri" "'file:///home/notclaytonjohnson/Pictures/latest_4096_0304.jpg'"
dconf write "/org/gnome/desktop/background/picture-options" "'scaled'"
