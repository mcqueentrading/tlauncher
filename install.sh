#!/bin/bash

echo "Installing tlauncher..."

# 1. Make tlauncher executable
chmod +x tlauncher

# 2. Create ~/.local/bin if it doesn't exist
mkdir -p ~/.local/bin

# 3. Copy tlauncher to ~/.local/bin
cp tlauncher ~/.local/bin/

# 4. Ensure ~/.local/bin is in PATH
if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
    echo "Added ~/.local/bin to PATH in ~/.bashrc"
fi

echo "✓ tlauncher installed to ~/.local/bin/tlauncher"
echo ""
echo "Run 'source ~/.bashrc' or restart your terminal, then type 'tlauncher' to launch"
