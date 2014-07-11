#!/bin/sh

echo [+] Installing network tools
sleep 3;

pacman --noconfirm -S wireshark-gtk
usermod -aG wireshark vagrant
pacman --noconfirm -S gnu-netcat
pacman --noconfirm -S nmap
pacman --noconfirm -S tcpdump
pacman --noconfirm -S whois
pacman --noconfirm -S tor
usermod -aG tor vagrant

