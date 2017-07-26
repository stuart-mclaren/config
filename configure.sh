#!/bin/bash

# Configure's user settings only

DATE=`date | tr ' ' '_'`

LINKS=".bbtools .xsession .xinitrc .pekwm .i3lock .wbar .config/terminator/config .vimrc .vim/colors/mclaren.vim"

for LINK in $LINKS
do
    if [ -f ~/$LINK ]
    then
        mv ~/$LINK ~/${LINK}.${DATE}
    fi
    mkdir -p ~/`dirname $LINK`
    ln -s ~/git/config/$LINK ~/$LINK
done
