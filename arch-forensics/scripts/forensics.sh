#!/bin/sh

echo [+] Installing forensics tools
sleep 3;

pacman --noconfirm -S archassault-analysis
pacman --noconfirm -S archassault-forensic
pacman --noconfirm -S python2-crypto
pacman --noconfirm -S dcfldd
pacman --noconfirm -S sleuthkit
pacman --noconfirm -S rkhunter

