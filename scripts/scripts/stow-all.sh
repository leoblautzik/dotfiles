#!/bin/bash

cd ~/dotfiles
stow alacritty
stow clang-format
rm ~/.config/i3/*
stow i3
rm ~/.config/mc/*
rm ~/.local/share/mc/*
stow mc
stow picom
stow rofi
stow tmux
stow yazi
stow wallpapers
stow zshrc
