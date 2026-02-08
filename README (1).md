# tlauncher

**tlauncher** is a lightweight, keyboard-driven application launcher for Linux.  
Built for speed and simplicity, it fits naturally into Wayland and tiling window-manager workflows such as **Hyprland**.

No heavy menus, no mouse — just launch apps and keep moving.

## Features
- Fast, minimal, keyboard-first
- Launches apps from `.desktop` files
- **Tab completion support** for Bash, Zsh, and Fish
- Interactive fzf launcher OR direct command-line launching
- Designed for Wayland / Hyprland
- Easy to bind to a key
- Terminal stays open on cancel (ESC/Ctrl+C)

## Installation

```bash
git clone https://github.com/mcqueentrading/tlauncher.git
cd tlauncher
chmod +x install.sh
./install.sh
```

### Shell-Specific Setup

#### Bash
```bash
source ~/.bashrc
```

#### Zsh
```bash
source ~/.zshrc
```

#### Fish
Tab completion auto-loads — no additional setup needed!

## Usage

### Interactive Launcher (fzf)

Launch the interactive menu:
```bash
tlauncher
```

- **Select an app** → launches and closes terminal
- **Press ESC or Ctrl+C** → terminal becomes usable shell

### Direct Launch with Tab Completion

Launch apps directly from the command line:
```bash
tlaunch fire<TAB>      # autocompletes to "firefox"
tlaunch kate<TAB>      # autocompletes to "kate"
tlaunch Fil<TAB>       # autocompletes to "Files"
```

Works in **Bash**, **Zsh**, and **Fish**!

### Hyprland Keybind

Add to `~/.config/hypr/hyprland.conf`:
```
bind = $mainMod, S, exec, kitty -e bash -c 'tlauncher; exit'
```

Reload Hyprland:
```bash
hyprctl reload
```

Press `SUPER + S` to launch the interactive menu.

## How It Works

**tlauncher** provides two launching modes:

1. **`tlauncher`** - Interactive fzf-based launcher
   - Reads `.desktop` files from `/usr/share/applications/` and `~/.local/share/applications/`
   - Filters out `NoDisplay` and `OnlyShowIn` entries
   - Launches selected app detached from terminal
   - If cancelled, converts terminal into normal shell session

2. **`tlaunch <app>`** - Direct command-line launcher with tab completion
   - Tab-complete application names
   - Launch instantly without interactive menu
   - Perfect for quick launches from existing terminal

## Dependencies
- `bash`
- `fzf`
- `grep`, `awk`, `cut` (standard Unix tools)

## License
MIT
