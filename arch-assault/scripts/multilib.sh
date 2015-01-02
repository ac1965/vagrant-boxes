#!/bin/sh

echo [+] Installing multilib repo and multilib-devel tools
sleep 3

if [[ $(uname -m) == "x86_64" ]]; then
    cat <<EOF >> /etc/pacman.conf
[multilib]
Include = /etc/pacman.d/mirrorlist
EOF
fi

pacman -Sy
pacman -Rdd --noconfirm gcc-libs
pacman -S --noconfirm gcc-multi-libs

pacman -S multilib-devel<<EOF

y
y
y
EOF

