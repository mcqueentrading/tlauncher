# tlauncher

**tlauncher** is a lightweight, keyboard-driven application launcher for Linux.  
Built for speed and simplicity, it fits naturally into Wayland and tiling window-manager workflows such as **Hyprland**.

No heavy menus, no mouse — just launch apps and keep moving.

## Features
- Fast, minimal, keyboard-first
- Launches apps from `.desktop` files
- Designed for Wayland / Hyprland
- Easy to bind to a key

## Installation

### From AUR (Arch Linux)
```bash
yay -S tlauncher-git
```

### Manual Installation
```bash
sudo install -Dm755 tlauncher /usr/bin/tlauncher
```

## Usage

### Hyprland Bind
Add to `~/.config/hypr/hyprland.conf`:
```
bind = $mainMod, S, exec, kitty -e bash -c 'tlauncher; exit'
```

Reload Hyprland:
```bash
hyprctl reload
```

Press `SUPER + S` to launch.

## Dependencies
- `bash`
- `fzf`

## License
MIT
