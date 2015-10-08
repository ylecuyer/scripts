#!/bin/bash

#This will run reflector on mirrorlist, copying from backup first, overwriting

sudo curl -o /etc/pacman.d/mirrorlist.backup https://www.archlinux.org/mirrorlist/all/
sudo cp /etc/pacman.d/mirrorlist.backup /etc/pacman.d/mirrorlist
sudo reflector --verbose -l 200 -p http --sort rate --save /etc/pacman.d/mirrorlist
