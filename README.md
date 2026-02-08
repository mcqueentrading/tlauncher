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

```bash
git clone https://github.com/mcqueentrading/tlauncher.git
cd tlauncher
chmod +x install.sh
./install.sh
source ~/.bashrc
```

## Usage

### Hyprland Bind

Add to `~/.config/hypr/hyprland.conf`:

**For bash users:**
```
bind = $mainMod, S, exec, kitty -e bash -c 'tlauncher || bash'
```

**For zsh users:**
```
bind = $mainMod, S, exec, kitty -e zsh -c 'tlauncher || zsh'
```

**For fish users:**
```
bind = $mainMod, S, exec, kitty -e fish -c 'tlauncher; or fish'
```

Reload Hyprland:
```bash
hyprctl reload
```

Press `SUPER + S` to launch.

> **Note:** The `|| shell` (or `; or fish`) ensures that pressing Ctrl+C in the launcher returns you to your shell prompt instead of closing the window.

## Dependencies
- `bash`
- `fzf`

## License
MIT
