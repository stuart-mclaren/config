#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

# for xsetroot
aptitude -y install x11-xserver-utils

aptitude -y install pekwm pekwm-themes

aptitude -y install bbpager

# for xclock
aptitude -y install x11-apps

aptitude -y install terminator

aptitude -y install xautolock

aptitude -y install i3lock
