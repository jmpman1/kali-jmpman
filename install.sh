#!/bin/bash

sudo apt update && sudo apt upgrade -y

sudo apt-get install -y wget curl git
sudo apt-get install -y feh i3blocks i3status i3 i3-wm picom alacritty

mkdir -p ~/.local/share/fonts/

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/VictorMono.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/UbuntuMono.zip

unzip VictorMono.zip -d ~/.local/share/fonts/
unzip UbuntuMono.zip -d ~/.local/share/fonts/

fc-cache -fv

mkdir -p ~/.config/i3
mkdir -p ~/.config/picom
mkdir -p ~/.config/i3blocks
mkdir -p ~/.config/alacritty

git clone https://github.com/vivien/i3blocks-contrib
mv i3blocks-contrib ~/.config/i3blocks/scripts

cp config/i3/config ~/.config/i3/config
cp config/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml
cp config/alacritty/catppuccin-mocha.toml ~/.config/alacritty/catppuccin-mocha.toml
cp config/i3blocks/config ~/.config/i3blocks/config
cp config/picom/picom.conf ~/.config/picom/picom.conf
cp -r wallpaper ~/.wallpaper

echo "kali-jmpman installed successfully!"
echo "After reboot: Select i3 on login."

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
