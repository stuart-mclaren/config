#!/bin/bash

DATE=`date | tr ' ' '_'`

LINKS=".bbtools .xsession .xinitrc .pekwm .i3lock"

for LINK in $LINKS
do
    mv ~/$LINK ~/${LINK}.${DATE}
    ln -s ~/git/config/$LINK ~/$LINK
done
