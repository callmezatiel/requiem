#!/bin/bash

# banner
banner() {
printf "\e[1;93m   .______  ._______._______  .____     .___ ._______._____.___   \e[0m\n"
printf "\e[1;93m   : __   \ : .____/: .___  \ |    |___ : __|: .____/:         |  \e[0m\n"
printf "\e[1;93m   |  \____|| : _/\ | :   |  ||    |   || : || : _/\ |   \  /  |  \e[0m\n"
printf "\e[1;93m   |   :  \ |   /  \|     :  ||    :   ||   ||   /  \|   |\/   |  \e[0m\n"
printf "\e[1;93m   |   |___\|_.: __/ \_____. :|        ||   ||_.: __/|___| |   |  \e[0m\n"
printf "\e[1;93m   |___|       :/          :/ |. _____/ |___|   :/         |___|  \e[0m\n"
printf "\e[1;93m   :   :/                                                         \e[0m\n"
printf "\e[1;93m   :                                                              \e[0m\n"
printf "\e[1;77m\e[45m       :: Kali MATE :: github.com/callmezatiel              \e[0m\n"
    printf "\n"
}
banner


#MATE desktop for Pentesters

apt install mate-desktop mate-desktop-common mate-desktop-environment -y
apt install mate-desktop-environment-core mate-desktop-environment-extra -y
apt install mate-desktop-environment-extras kali-desktop-mate -y
apt install tor ufw gospider hakrawler gobuster ruby-dev ffuf seclists filezilla -y
apt install httrack webhttrack sherlock eyewitness sublist3r photon recon-ng python3-venv python3-pip jq pipx -y
apt install snapd mediainfo-gui kali-tools-crypto-stego neovim cargo asciinema -y
apt install marble qgis finalrecon ugrep bloodhound bing-ip2hosts golang libxcb-cursor0 -y
apt install mat2 gallery-dl libimage-exiftool-perl stegosuite exifprobe ruby-bundler mpg123 -y
apt install thunderbird sq python3-lxml libre-dev exiflooter flowblade dumpsterdiver -y
apt install tiix npm -y
apt purge spiderfoot amass theharvester -y
apt autoremove -y
sudo apt remove libreoffice mate-terminal -y

systemctl start snapd
systemctl enable snapd
systemctl start snapd.apparmor
systemctl enable snapd.apparmor

snap install joplin-desktop
snap install ngrok
snap install localxpose
snap install telegram-desktop

gem install mechanize
gem install colorize


systemctl enable ufw
ufw enable
ufw allow ssh
systemctl start postgresql
systemctl enable postgresql
systemctl start ssh
systemctl enable ssh

#Update Metasploit
msfdb init


sudo apt install -y xinit
sudo apt install -y xorg 
sudo apt install -y lightdm
sudo systemctl enable lightdm
reboot
