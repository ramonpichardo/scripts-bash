#!/usr/bin/env bash

cat >> ~/.bash_profile <<'EOF'
> export PATH="$PATH:~/scripts"
> export PS1="\u@\h [\w] $ "
> export HISTTIMEFORMAT="%Y-%m-%d %T "
> export HISTCONTROL=ignorespace:ignoredups
> export HISTSIZE=1000
> export HISTFILESIZE=1000
> alias ll="ls -laFGh"
> alias nmap="nmap -vv -O -P0 -sTUV --top-ports 1000"
> alias socks5="ssh -D 40022 -f -C -q -N ramon@192.168.1.100"
> alias airport="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport"
> EOF

source ~/.bash_profile

softwareupdate -ia

xcode-select --install && xcodebuild -license

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew doctor

reboot
