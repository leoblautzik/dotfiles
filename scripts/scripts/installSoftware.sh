#!/bin/sh

sudo systemctl enable sshd 
sudo systemctl start sshd

# Instalar software
sudo pacman -S zsh git curl xdg-user-dirs ripgrep tree rofi fzf mc yazi neovim neofetch nitrogen firefox alacritty stow xclip xpdf pcmanfm zip unzip p7zip volumeicon pavucontrol picom lxappearance papirus-icon-theme adapta-gtk-theme arc-gtk-theme arc-solid-gtk-theme ttf-jetbrains-mono-nerd ttf-meslo-nerd ttf-firacode-nerd lsd bat gtk-engine-murrine rsync tmux lightdm-slick-greeter xautolock rsync

# Crea las carpetas de usuario
xdg-user-dirs-update

# Wallpapers
mv ~/dotfiles/wallpapers/wallpapers  ~

# lightdm-slick-greeter
sudo cp ~/dotfiles/lightdm/*.conf /etc/lightdm/
sudo cp ~/wallpapers/art.jpg /usr/share/backgrounds/archlinux/greeter.jpg

# Mopuse Tapping
sudo cp ~/dotfiles/mouse/mouse/30-touchpad.conf /etc/X11/xorg.conf.d/30-touchpad.conf

# ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Tmux tpm plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# paru-bin
mkdir ~/tmp
cd ~/tmp
git clone https://aur.archlinux.org/paru-bin.git
cd paru-bin 
makepkg -si 

# script que hace stow de los paquetes personalizados en dotfiles. 
~/dotfiles/scripts/scripts/stow-all.sh

# Neovim neovim + leoblautzik
git clone https://github.com/leoblautzik/Nv-leoblau.git ~/.config/nvim

