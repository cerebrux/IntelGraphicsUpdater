#!/bin/bash
#______________________________________________________________________________________________________
#Name   : IntelGraphicsUpdater
#Licence: ΜΙΤ (http://aldoiljazi.mit-license.org/)
#Author : Aldo Iljazi
#Email  : mail (at) com  
#Date   : xx-xx-2013 (first release xx-xx-2013)
#Version: x.x
#System : Linux
#WebSite: http://website.com
#Source Code: Everything below comments is the sourcecode :)
#Description:
#        bla bla bla bla
#______________________________________________________________________________________________________

sleep 2
if [ -f /etc/apt/sources.list.d/intellinuxgraphics.list ]
then
  notify-send -i $(pwd)/icons/error.png "You have already installed the Intel graphics driver."
else
  notify-send -i $(pwd)/icons/progress.png "The script is installing the latest Intel graphics driver."
  echo "deb https://download.01.org/gfx/ubuntu/12.04/main Ubuntu 12.04 #Intel Graphics drivers" | sudo tee /etc/apt/sources.list.d/intellinuxgraphics.list
  wget --no-check-certificate https://download.01.org/gfx/RPM-GPG-KEY-ilg -O  /tmp/intelrepo.key
  sudo apt-key add /tmp/intelrepo.key
  sudo apt-get update
  sudo apt-get dist-upgrade
  notify-send -i $(pwd)/icons/success.png "The Intel graphics driver has been installed."
fi
