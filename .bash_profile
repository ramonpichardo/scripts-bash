# Note: Source the Bash profile after changing it: source ~/.bash_profile

# Set prompt to "user@hostname [current working directory] $ "
export PS1="\u@\h [\w] $ "

# Add date & time prefix for each saved command in the history file
export HISTTIMEFORMAT="%Y-%m-%d %T "

# Don't save commands starting with a space in the history file
# Don't put duplicate lines in the history file
export HISTCONTROL=ignorespace:ignoredups

# Set total lines in history file to 1000
export HISTSIZE=1000
export HISTFILESIZE=1000

# Set directory longform listing format
alias ll="ls -laFGh"

# Scan for top 1000 ports using nmap
alias nmap1000="nmap -vv -O -P0 -sTUV --top-ports 1000" 

# Set Socks port traffic redirection
alias socks5="ssh -D 40022 -f -C -q -N username@50.137.137.96"

# Set alias for Apple Airport wireless CLI access
alias airport="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport"

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ]; then
	{ echo $PATH | grep -q "$HOME/bin:"; } || PATH="$HOME/bin:$PATH"
fi
