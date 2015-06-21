#!/bin/bash

DATE=`date | tr ' ' '_'`

LINKS=".bbtools .xsession .xinitrc .pekwm .i3lock .wbar"

for LINK in $LINKS
do
    if [ -f ~/$LINK ]
    then
        mv ~/$LINK ~/${LINK}.${DATE}
    fi
    ln -s ~/git/config/$LINK ~/$LINK
done
