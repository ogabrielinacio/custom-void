#!/usr/bin/env bash

sudo xbps-install -u xbps

sudo xbps-install -Su 

sudo xbps-install xorg

sudo xbps-install bash-completion 

sudo xbps-install bspwm polybar neovim vim sxhkd cava feh nemo rofi openjdk11 NetworkManager keepassxc telegram-desktop pulseaudio htop bpytop obs gimp zathura ranger alacritty flameshot timeshift mpv lxappearance gparted firefox acpi bc binutils  gzip gtk+ gtk+3 gtkd-devel iptables iproute2 os-tree pavucontrol   thefuck tldr slock qemu neofetch picocom python3-dbus emacs-x11 fd ripgrep vscode git, gcc, clang nodejs python3  acpi  cmake cowsay curl docker docker-compose emacs feh  gawk lua ninja neovim openssh openssl tree   flatpak vscode libvirt libvirt-python3 tty-clock alsa-utils ascii dunst gparted liblzma-devel liblzma net-tools pavucontrol python3-pip python-pip tldr unzip virt-manager xtools zip

cat << EOF >> ~/.bashrc
#Volume Functions
svol() {
    pactl -- set-sink-volume 1 $1%
}

vinc() {
    pactl -- set-sink-volume 1 +$1%
}

vdec() {
    pactl -- set-sink-volume 1 -$1%
}
#Volume Functions

#Brightness Function
bri() {
    if [ $1 -eq 1 ] || [ $1 -eq 100 ];
    then
     xrandr --output HDMI-A-0 --brightness 1
    else
     xrandr --output HDMI-A-0 --brightness 0.$1
    fi
}
#Brightness Function
EOF

# Remove BEEP
# rmmod pcspkr

# see in /etc/inputrc and uncomment line set bell-style none,
# but in my case this line was already uncommented and the beep comes out anyway

# vim /etc/modprobe.d/nobeep.conf
# blacklist pcspkr
#save, and restart your pc 
# Remove BEEP

# dialout //acess serial
# docker // add group

# Wi-fi
# config o nmcli 
# add o user group

# sudo gpasswd -a [usuer] network
# sudo rm -fr /var/service/wpa_supplicant
# sudo ln -s /etc/sv/NetworkManager /var/service
# sudo ln -s /etc/sv/dbus /var/ser

# symbolic link
# sudo ln -s colors.sh /usr/bin/

# sudo ln -s pacman.sh  /usr/bin/

# sudo ln -s pipes.sh/pipes.sh /usr/bin/

# sudo ln -s ani-cli/ani-cli   /usr/bin/

# sudo ln -s logo-ls_Linux_x86_64/logo-ls /usr/bin/

# sudo  ln -s rofi-wifi-menu/rofi-wifi-menu.sh /usr/bin/

# sudo  ln -s rxfetch/rxfetch /usr/bin/
# symbolic link

# install  nerd fonts

#  EXTERNAL PROGRAMS 
# doom emacs, chromium
# EXTERNAL PROGRAMS  
