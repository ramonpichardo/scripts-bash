#!/usr/bin/env bash

echo "export PATH="$PATH:~/scripts"" >> ~/.bash_profile
echo "export PS1="\u@\h [\w] $ ""  >> ~/.bash_profile
echo "alias ll="ls -laFGh"" >> ~/.bash_profile
echo "alias nmap="nmap -vv -O -P0 -sTUV --top-ports 1000"" >> ~/.bash_profile
echo "alias socks5="ssh -D 40022 -f -C -q -N ramon@192.168.1.100"" >> ~/.bash_profile
echo "alias airport="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport"" >> ~/.bash_profile

softwareupdate -ia
xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
reboot
