#!/usr/bin/env bash

## New folders to be used for .deb downloads and github repository plus any folder you need because you want to
mkdir "/home/$USER/Git"

DOWNLOAD_DIR="/home/$USER/Downloads"
REPO_DIR="/home/$USER/Git"

## Remove apt locks if any
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock

## External repositories
sudo apt install git -y
#git clone https://github.com/link.git ./Folder1/Folder2

# "Apts"
# You can install all the applications on a single apt command "sudo apt install app1 app2 app3 -y"
sudo apt install guake -y
sudo apt install steam -y
sudo apt install lutris -y
sudo apt install vlc -y
sudo apt install flatpak -y
sudo apt install htop -y
sudo apt install neofetch -y
sudo apt install virtualbox -y
sudo apt install tilix -y
sudo apt install speedtest-cli -y
sudo apt install mongodb -y
sudo apt install fonts-powerline -y
sudo apt install curl -y
sudo apt install wget -y
sudo apt install gnome-tweaks -y
sudo apt install apt-transport-https -y
sudo apt install gnome-session -y
sudo apt install libgtk-3-dev -y
sudo apt install inkscape -y
sudo apt install ruby -y

## Flatpaks
flatpak install flathub com.obsproject.Studio -y
flatpak install flathub com.discordapp.Discord -y
flatpak install flathub net.runelite.RuneLite -y
flatpak install flathub com.obsproject.Studio -y
flatpak install flathub com.unity.UnityHub -y
flatpak install flathub org.gimp.GIMP -y
flatpak install flathub org.kde.krita -y
flatpak install flathub com.spotify.Client -y
flatpak install flathub com.axosoft.GitKraken -y
flatpak install flathub org.blender.Blender -y
flatpak install flathub com.github.debauchee.barrier -y
flatpak install flathub com.anydesk.Anydesk -y
flatpak install flathub org.audacityteam.Audacity -y
flatpak install flathub org.gnome.meld -y
flatpak install flathub com.basemark.BasemarkGPU -y
flatpak install flathub com.jetbrains.Rider -y
flatpak install flathub com.jetbrains.DataGrip -y
flatpak install flathub com.jetbrains.WebStorm -y
flatpak install flathub com.jetbrains.PyCharm-Professional -y
flatpak install flathub com.jetbrains.PyCharm-Community -y
flatpak install flathub com.getpostman.Postman -y
flatpak install flathub io.atom.Atom -y
flatpak install flathub com.google.AndroidStudio -y
flatpak install flathub com.sublimemerge.App -y

## Install vscode
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update
sudo apt install code

## Install nodejs/npm
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install nodejs

## Change gdm login screen from pop_os theme to default gnome theme
sudo update-alternatives --config gdm3-theme.gresource

## Install zsh/ohmyzsh and powerline10k theme
sudo apt install zsh

## Post-install update and cleanup
sudo apt update && sudo apt dist-upgrade -y
flatpak update
sudo apt autoclean
sudo apt autoremove -y