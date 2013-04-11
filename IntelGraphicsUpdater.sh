#!/bin/bash

# -----------------------------------------------------------------------
# Title:        IntelGraphicsUpdater
# Description:  This script will install the latest Intel Graphics Driver
#               on Ubuntu/Ubuntu-based Linux distributions.
# Author:       Donald Iljazi
# Date:         12 April 2013
# Version:      0.1    
# Usage:        sh ./IntelGraphicsUpdater.sh
# -----------------------------------------------------------------------

clear
echo "This script runs on Ubuntu and Ubuntu-based installations only."
sleep 3

if [ -f /etc/apt/sources.list.d/intellinuxgraphics.list ]
then
  clear
  echo "Not sure if I already ran this script or I traveled to the future."
  sleep 5
  clear
else
  clear
  echo "Try saying fast 'Red blood, blue blood' five times, while this script is installing the latest Intel driver."
  echo "deb https://download.01.org/gfx/ubuntu/12.04/main Ubuntu 12.04 #Intel Graphics drivers" | sudo tee /etc/apt/sources.list.d/intellinuxgraphics.list > /dev/null
  wget --quiet --no-check-certificate https://download.01.org/gfx/RPM-GPG-KEY-ilg -O  /tmp/intelrepo.key
  sudo apt-key add /tmp/intelrepo.key > /dev/null
  sudo apt-get update > /dev/null
  sudo apt-get dist-upgrade > /dev/null
  clear
  echo "The Intel graphics driver has been installed."
  sleep 5
  clear
fi