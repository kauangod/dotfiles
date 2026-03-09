# Dotfiles

Backup completo das configurações do sistema Arch Linux com Hyprland (Omarchy).

## Estrutura

```
dotfiles/
├── configs/          # ~/.config/*
│   ├── hypr/         # Hyprland, Hypridle, Hyprlock, Hyprsunset
│   ├── waybar/       # Barra de status
│   ├── nvim/         # Neovim (LazyVim)
│   ├── alacritty/    # Terminal Alacritty
│   ├── kitty/        # Terminal Kitty
│   ├── ghostty/      # Terminal Ghostty
│   ├── tmux/         # Tmux
│   ├── walker/       # App launcher
│   ├── mako/         # Notificações
│   ├── btop/         # Monitor de sistema
│   ├── lazygit/      # Git TUI
│   ├── git/          # Git config
│   ├── fastfetch/    # System info
│   ├── fontconfig/   # Fontes
│   ├── swayosd/      # OSD overlay
│   ├── imv/          # Image viewer
│   ├── omarchy/      # Omarchy branding/tema
│   ├── starship/     # Starship prompt
│   ├── opencode/     # OpenCode config
│   ├── wiremix/      # Audio
│   ├── uwsm/         # Session manager
│   ├── makima/       # Keybindings
│   ├── environment.d/# Variáveis de ambiente
│   └── autostart/    # Autostart apps
├── home/             # ~/.*
│   ├── .zshrc
│   ├── .zshenv
│   ├── .zprofile
│   ├── .bashrc
│   ├── .bash_profile
│   ├── .gitconfig
│   ├── .p10k.zsh
│   └── ...
├── etc/              # /etc/*
│   ├── pacman.conf
│   └── makepkg.conf
├── pkglist.txt       # Pacotes oficiais (pacman)
└── aurlist.txt       # Pacotes AUR
```

## Restaurar

```bash
# Instalar pacotes
sudo pacman -S --needed - < dotfiles/pkglist.txt
yay -S --needed - < dotfiles/aurlist.txt

# Copiar configs
cp -r dotfiles/configs/* ~/.config/
cp dotfiles/home/.* ~/
sudo cp dotfiles/etc/* /etc/
```
