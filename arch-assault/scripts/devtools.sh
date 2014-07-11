#!/bin/sh

echo [+] Installing developer/system tools
sleep 3

pacman --noconfirm -S linux-headers

pacman --noconfirm -S gcc
pacman --noconfirm -S make
pacman --noconfirm -S fakeroot
pacman --noconfirm -S binutils

pacman --noconfirm -S screen
pacman --noconfirm -S tmux
pacman --noconfirm -S nginx
pacman --noconfirm -S git
pacman --noconfirm -S php
pacman --noconfirm -S php-fpm

pacman --noconfirm -S python
pacman --noconfirm -S python2
pacman --noconfirm -S python-virtualenv

pacman --noconfirm -S hexedit
pacman --noconfirm -S bless
pacman --noconfirm -S gdb
pacman --noconfirm -S strace
pacman --noconfirm -S ltrace
pacman --noconfirm -S unzip

