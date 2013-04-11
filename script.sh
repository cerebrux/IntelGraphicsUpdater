#!/bin/bash

if [ -f /etc/apt/sources.list.d/intellinuxgraphics.list ]
then
  notify-send -t 3 -i $(pwd)/icons/error.png "You have already installed the Intel graphics driver."
else
  notify-send -t 3 -i $(pwd)/icons/progress.png "The script is installing the latest Intel graphics driver."
  echo "deb https://download.01.org/gfx/ubuntu/12.04/main Ubuntu 12.04 #Intel Graphics drivers" | sudo tee /etc/apt/sources.list.d/intellinuxgraphics.list
  wget --no-check-certificate https://download.01.org/gfx/RPM-GPG-KEY-ilg -O  /tmp/intelrepo.key
  sudo apt-key add /tmp/intelrepo.key
  sudo apt-get update
  sudo apt-get dist-upgrade
  notify-send -t 3 -i $(pwd)/icons/success.png "The Intel graphics driver has been installed."
fi