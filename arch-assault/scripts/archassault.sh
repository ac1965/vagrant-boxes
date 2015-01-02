#!/bin/sh

echo [+] Adding ArchAssault repos and keys to pacman.
sleep 3;

wget http://repo.archassault.org/archassault/setup/archassault-keyring-20140202-1-any.pkg.tar.xz
wget http://repo.archassault.org/archassault/setup/archassault-keyring-20140202-1-any.pkg.tar.xz.sig

dirnmgr </dev/null

pacman-key -r CC1D2606

gpg --verify --home /etc/pacman.d/gnupg archassault-keyring-20140202-1-any.pkg.tar.xz.sig archassault-keyring-20140202-1-any.pkg.tar.xz

pacman-key --lsign-key CC1D2606

pacman --noconfirm -U archassault-keyring-20140202-1-any.pkg.tar.xz

if [ $(grep -c archassault /etc/pacman.conf) -eq 0 ]; then
    echo "[archassault]" >> /etc/pacman.conf
    echo "Server = http://repo.archassault.org/archassault/\$repo/os/\$arch" >> /etc/pacman.conf
fi

pacman --noconfirm -Syy

