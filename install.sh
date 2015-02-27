#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

# for xsetroot
aptitude install x11-xserver-utils

aptitude install pekwm pekwm-themes

aptitude install bbpager

aptitude install xclock

aptitude install terminator

aptitude install xautolock

aptitude install i3lock
