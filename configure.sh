#!/bin/bash

DATE=`date | tr ' ' '_'`

LINKS=".bbtools .xsession .pekwm"

for LINK in $LINKS
do
    mv ~/$LINK ~/${LINK}.${DATE}
    ln -s ~/git/config/$LINK ~/$LINK
done
