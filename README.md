<h1 align="center">My linux setup and dotfiles</h1>

## Installation

- Take a look at the setup and dotfiles and symlink the files that you'd like to try

## Structure

This repository structure mirrors a `$HOME` directory:

> The setup below contains details about the programs, themes and plugins that I use, each link with its installation guide, aur package or source code.
> You might want to use [GNU Stow](https://www.gnu.org/software/stow/) for managing the symlinks

## Setup

- OS: [`Arch Linux`](https://wiki.archlinux.org/title/Installation_guide)

- Bootloader: [`grub`](https://wiki.archlinux.org/title/GRUB)

  - Theme: [`fallout`](https://github.com/shvchk/fallout-grub-theme)

- CLI:

  - Terminal: [`kitty`](https://wiki.archlinux.org/title/Kitty#Installation)

    - Font: [`Jetbrains Mono`](https://archlinux.org/packages/community/any/ttf-jetbrains-mono)

  - Shell: [`bash`](https://wiki.archlinux.org/title/Bash#Invocation)

  - Terminal multiplexer: [`tmux`](https://wiki.archlinux.org/index.php/Tmux#Installation)

  - Unix commands replacements:

    - ls: [`exa`](https://github.com/ogham/exa#arch-linux)
    - cat: [`bat`](https://github.com/sharkdp/bat#on-arch-linux)
    - grep: [`rg`](https://github.com/BurntSushi/ripgrep#installation)
    - top: [`ytop`](https://github.com/cjbassi/ytop#installation)
    - find: [`fd`](https://github.com/sharkdp/fd#on-arch-linux)
    - du: [`ncdu`](https://archlinux.org/packages/community/x86_64/ncdu)
    - rm: [`rmtrash`](https://aur.archlinux.org/packages/rmtrash)

  - Useful programs:

    - [`lazydocker`](https://github.com/jesseduffield/lazydocker)
    - [`bandwhich`](https://github.com/imsnif/bandwhich)
    - [`zoxide`](https://aur.archlinux.org/packages/zoxide-bin)
    - [`fzf`](https://wiki.archlinux.org/index.php/fzf#Installation)

  - Git helpers:
    - Diff viewer: [`delta`](https://github.com/dandavison/delta#installation)

* Display server: [`xorg`](https://wiki.archlinux.org/index.php/xorg#Installation)

  - Modify keyboard mappings: [`xmodmap`](https://wiki.archlinux.org/index.php/xmodmap#Installation)
    ```bash
    # In order to support cedilla on ´+c, use this:
    sudo sed -i /usr/share/X11/locale/en_US.UTF-8/Compose -e 's/ć/ç/g' -e 's/Ć/Ç/g'
    # And add this to /etc/environment
    GTK_IM_MODULE=cedilla
    QT_IM_MODULE=cedilla
    ```

* Window managers:

  - [`dwm`](https://github.com/arcticlimer/suckless/tree/master/dwm)

    - Locker: [`slock`](https://github.com/arcticlimer/suckless/tree/master/slock)
    - Status: [`slstatus`](https://github.com/arcticlimer/suckless/tree/master/slstatus)
    - Launcher: [`dmenu`](https://github.com/arcticlimer/suckless/tree/master/dmenu)

- Screenlocking:

  - Helper: [`xautolock`](https://archlinux.org/packages/community/x86_64/xautolock)

- Software mixer: [`pulseaudio`](https://wiki.archlinux.org/index.php/PulseAudio#Installation)

  - Mixer: [`pulsemixer`](https://archlinux.org/packages/community/any/pulsemixer)

* Browser: [`firefox`](https://wiki.archlinux.org/index.php/Firefox#Installing):

- Notifications daemon: [`dunst`](https://wiki.archlinux.org/index.php/Dunst#Installation)

- Compositor: [`picom`](https://wiki.archlinux.org/index.php/Picom#Installation)

- Development:

  - Editors:

    - [`vim`](https://wiki.archlinux.org/index.php/vim#Installation):

      - Plugin manager: [`vim-plug`](https://github.com/junegunn/vim-plug#installation)

    - [`neovim`](https://aur.archlinux.org/packages/neovim-nightly-bin):

      - Plugin manager: [`packer.nvim`](https://github.com/wbthomason/packer.nvim)

* Languages version manager: [`asdf`](https://asdf-vm.com/#/core-manage-asdf?id=asdf)

* Databases:

  - [`PostgreSQL`](https://wiki.archlinux.org/index.php/PostgreSQL)
  - [`MariaDB`](https://wiki.archlinux.org/index.php/MariaDB)

* Database client: [`beekeeper-studio`](https://aur.archlinux.org/packages/beekeeper-studio-bin)
* REST client: [`insomnia`](https://aur.archlinux.org/packages/insomnia)
* Containers: [`docker[-compose]`](https://wiki.archlinux.org/index.php/Docker)

- File management:

  - XDG: [`thunar`](https://wiki.archlinux.org/index.php/thunar#Installation)
  - CLI: [`vifm`](https://wiki.archlinux.org/title/Vifm#Installation)

* Wallpaper management:

  - [`wallpapers (require sxiv)`](bin/wallpapers)
  - [`set_bg (requires feh)`](bin/set_bg)

* Ricing:

  - [`cava`](https://aur.archlinux.org/packages/cava)
  - [`tty-clock`](https://aur.archlinux.org/packages/tty-clock)
  - [`lolcat`](https://archlinux.org/packages/community/any/lolcat)
  - [`cmatrix`](https://archlinux.org/packages/community/x86_64/cmatrix)

* Others:

  - Screenshots: [`flameshot`](https://wiki.archlinux.org/index.php/Flameshot)
  - PDF reader: [`mupdf`](https://wiki.archlinux.org/index.php/MuPDF#Installation)
  - Note taking: [`obsidian`](https://aur.archlinux.org/packages/obsidian-insider/)
  - Blue light filter: [`blugon`](https://aur.archlinux.org/packages/blugon)
  - Hide cursor: [`xbanish`](https://aur.archlinux.org/packages/xbanish)
  - Color picker: [`xcolor`](https://github.com/Soft/xcolor#arch-linux)

## Preview:

<img src="https://i.imgur.com/9xersCi.png" alt="desktop preview">
