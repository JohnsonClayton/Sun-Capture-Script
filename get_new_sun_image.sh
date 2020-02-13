#!/bin/bash

if [[ -f latest_4096_0304.jpg ]] ; then
  rm latest_4096_0304.jpg
fi

wget https://sdo.gsfc.nasa.gov/assets/img/latest/latest_4096_0304.jpg
cp latest_4096_0304.jpg /home/notclaytonjohnson/Pictures/Sun/0304/latest_4096_0304_$(date -u --iso-8601=minutes).jpg
mv latest_4096_0304.jpg /home/notclaytonjohnson/Pictures/latest_4096_0304.jpg
dconf write "/org/gnome/desktop/background/picture-uri" "'file:///home/notclaytonjohnson/Pictures/latest_4096_0304.jpg'"
dconf write "/org/gnome/desktop/background/picture-options" "scaled"

if [[ -f latest_4096_0171.jpg ]] ; then
  rm latest_4096_0171.jpg
fi

wget https://sdo.gsfc.nasa.gov/assets/img/latest/latest_4096_0171.jpg
cp latest_4096_0171.jpg /home/notclaytonjohnson/Pictures/Sun/0171/latest_4096_0171_$(date -u --iso-8601=minutes).jpg
mv latest_4096_0171.jpg /home/notclaytonjohnson/Pictures/latest_4096_0171.jpg
