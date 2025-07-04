#!/bin/bash
# Install all dependencies automatically
pkg update -y && pkg upgrade -y
pkg install -y git python curl wget nmap php
pip install requests

# Clone sqlmap if not present
if [ ! -d "$HOME/sqlmap" ]; then
  git clone --depth=1 https://github.com/sqlmapproject/sqlmap.git $HOME/sqlmap
  ln -s $HOME/sqlmap/sqlmap.py $PREFIX/bin/sqlmap
  chmod +x $PREFIX/bin/sqlmap
fi

# Install jq if not installed
pkg install -y jq

echo "[✔] Setup Complete. You can now run: bash sentinel.sh"
