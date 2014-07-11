#!/bin/sh

echo [+] Updating packages and repository databases
sleep 3;

pacman --noconfirm -Syu

