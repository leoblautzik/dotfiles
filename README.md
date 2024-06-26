# LeoBlau ArchI3

<!--toc:start-->
- [LeoBlau ArchI3](#leoblau-archi3)
  - [Instalar ArchLinux](#instalar-archlinux)
  - [Instalar paquetes extra](#instalar-paquetes-extra)
  - [Crear las carpetas de usuario](#crear-las-carpetas-de-usuario)
  - [Instalar temas e iconos - Ver: https://aur.archlinux.org/packages?K=gtk-theme](#instalar-temas-e-iconos-ver-httpsaurarchlinuxorgpackageskgtk-theme)
  - [Instalar Algunas Nerd Fonts](#instalar-algunas-nerd-fonts)
  - [Instalar OhMyzsh](#instalar-ohmyzsh)
  - [Instalar lsd y bat](#instalar-lsd-y-bat)
  - [Clonar dotfiles](#clonar-dotfiles)
  - [Instalar paru (AUR)](#instalar-paru-aur)
<!--toc:end-->


## Instalar ArchLinux

Descargar ISO y hacer un USB booteable.
Instalar mediante archinstall eligiendo: Profile Desktop con i3.
Se puede agregar a la lista de paquetes extra:
        - git curl firefox xclip alacritty zsh

Reiniciar y todo debría funcionar con i3-wm.
En caso de querer seguir con ssh: 

```bash

    sudo systemctl enable sshd 
    sudo systemctl start sshd

```   

## Instalar paquetes extra


```bash

    sudo pacman -S git curl ripgrep rofi fzf mc neovim neofetch nitrogen firefox alacritty stow xclip pcmanfm zip unzip p7zip

``` 

## Audio


```bash

    sudo pacman -S volumeicon pavucontrol

``` 

    
## Crear las carpetas de usuario

```bash

   sudo pacman -S xdg-user-dirs && xdg-user-dirs-update

```

## Instalar temas e iconos - Ver: https://aur.archlinux.org/packages?K=gtk-theme

```bash

    sudo pacman -S picom lxappearance papirus-icon-theme adapta-gtk-theme arc-gtk-theme arc-solid-gtk-theme 
```

## Instalar Algunas Nerd Fonts

```bash

    sudo pacman -S ttf-jetbrains-mono-nerd ttf-meslo-nerd ttf-firacode-nerd
``` 

## Instalar OhMyzsh

```bash

    sudo pacman zsh

    # OhMyzsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

    # zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

    # zsh-syntax-highlighting
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

``` 

## Instalar lsd y bat

```bash

    sudo pacman -S lsd
    sudo pacman -S bat
```

Reiniciar.
    
## Clonar dotfiles
    
```bash

    git clone https://github.com/leoblautzik/dotfiles.git ~/dotfiles
    cd ~/dotfiles
    #dentro de ~/dotfiles hacer: 
    stow --adopt .
```

## Instalar paru (AUR)

Clonar paru-bin dentro de ~/tmp

```bash

    mkdir ~/tmp
    cd tmp
    git clone https://aur.archlinux.org/paru-bin.git
    cd paru-bin 
    makepkg -si 
```
