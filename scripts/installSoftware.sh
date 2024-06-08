#!/bin/sh

sudo systemctl enable sshd 
sudo systemctl start sshd
sudo pacman -S xdg-user-dirs
xdg-user-dirs-update
sudo pacman -S git curl ripgrep rofi fzf mc neovim neofetch nitrogen firefox alacritty stow xclip pcmanfm zip unzip p7zip volumeicon pavucontrol picom lxappearance papirus-icon-theme adapta-gtk-theme arc-gtk-theme arc-solid-gtk-theme ttf-jetbrains-mono-nerd ttf-meslo-nerd ttf-firacode-nerd lsd bat gtk-engine-murrine rsync

# ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# paru-bin
mkdir ~/tmp
cd ~/tmp
git clone https://aur.archlinux.org/paru-bin.git
cd paru-bin 
makepkg -si 

#cd ~
cd ~/dotfiles
#dentro de ~/dotfiles hacer: 
stow --adopt .
rm -rf ~/dotfiles
git clone https://github.com/leoblautzik/dotfiles.git ~/dotfiles
sudo cp ~/dotfiles/mouse/30-touchpad.conf /etc/X11/xorg.conf.d/30-touchpad.conf
git clone https://github.com/leoblautzik/NvChad.git ~/.config/nvim
