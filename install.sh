#!/bin/sh

CYAN='\033[0;36m'
NC='\033[0m'
clear

echo "$CYAN"
echo " /\$\$\$\$\$\$\$  /\$\$\$\$\$\$  /\$\$\$\$\$\$  /\$\$\$\$\$\$\$\$ /\$\$   /\$\$ /\$\$\$\$\$\$\$  /\$\$\$\$\$\$\$  /\$\$\$\$\$\$\$\$ /\$\$\$\$\$\$\$"
echo "| \$\$__  \$\$|_  \$\$_/ /\$\$__  \$\$|__  \$\$__/| \$\$  | \$\$| \$\$__  \$\$| \$\$__  \$\$| \$\$_____/| \$\$__  \$\$"
echo "| \$\$  \ \$\$  | \$\$  | \$\$  \__/   | \$\$   | \$\$  | \$\$| \$\$  \ \$\$| \$\$  \ \$\$| \$\$      | \$\$  \ \$\$"
echo "| \$\$  | \$\$  | \$\$  |  \$\$\$\$\$\$    | \$\$   | \$\$  | \$\$| \$\$\$\$\$\$\$/| \$\$\$\$\$\$\$ | \$\$\$\$\$   | \$\$  | \$\$"
echo "| \$\$  | \$\$  | \$\$   \____  \$\$   | \$\$   | \$\$  | \$\$| \$\$__  \$\$| \$\$__  \$\$| \$\$__/   | \$\$  | \$\$"
echo "| \$\$  | \$\$  | \$\$   /\$\$  \ \$\$   | \$\$   | \$\$  | \$\$| \$\$  \ \$\$| \$\$  \ \$\$| \$\$      | \$\$  | \$\$"
echo "| \$\$\$\$\$\$\$/ /\$\$\$\$\$\$|  \$\$\$\$\$\$/   | \$\$   |  \$\$\$\$\$\$/| \$\$  | \$\$| \$\$\$\$\$\$\$/| \$\$\$\$\$\$\$\$| \$\$\$\$\$\$\$/"
echo "|_______/ |______/ \______/    |__/    \______/ |__/  |__/|_______/ |________/|_______/\n"

if [ ! -d "/home/$USER/Disturbed" ];then
    sudo mkdir /home/$USER/Disturbed
    echo "- Created Disturbed directory"
fi

if [ -f "/home/$USER/Disturbed/Disturbed" ];then
    sudo rm /home/$USER/Disturbed/disturbed
fi
sudo wget -P /home/$USER/Disturbed/ -q https://raw.githubusercontent.com/charleywright/Disturbed-Linux/master/disturbed
sudo chown charley /home/$USER/Disturbed/disturbed
sudo chmod +x /home/$USER/Disturbed/disturbed
echo "- Downloaded and marked as executable"

CMD="export PATH=\"/home/$USER/Disturbed:\$PATH\""
if ! grep -xq "$CMD" /home/$USER/.bashrc;then
    if [ -f "/home/$USER/.bashrc" ];then
        echo "\n$CMD" >> /home/$USER/.bashrc 
        echo "- Added alias to bash"
    fi
fi

if ! grep -xq "$CMD" /home/$USER/.zshrc;then
    if [ -f "/home/$USER/.zshrc" ];then
        echo "\n$CMD" >> /home/$USER/.zshrc 
        echo "- Added alias to zsh"
    fi
fi

echo "$NC"