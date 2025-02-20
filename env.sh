#!/usr/bin

alias python=python3
alias ll="ls -al"
alias alog="tail -f /var/log/squid/access.log"
alias clog="tail -f /var/log/squid/cache.log"
alias neofetch="$HOME/Workspace/projects/fastfetch/build/fastfetch"
alias code="/home/neo/Workspace/setup/code/code"
alias firefox="/home/neo/Workspace/setup/firefox/firefox --private-window"
# alias chrome="/home/neo/Workspace/setup/chrome/usr/bin/google-chrome-stable"
alias studio="/home/neo/Workspace/setup/android/studio/bin/studio"
alias pycharm="/home/neo/Workspace/setup/pycharm/bin/pycharm"
local_ip=`hostname -I | awk '{print $1}'`

public_ip=`wget -qO- ifconfig.me/ip`
#public_ip="*"
export SETUP_HOME=$HOME/Workspace/setup
export ANDROID_HOME=$SETUP_HOME/android/sdk
export ANDROID_USER_HOME=$ANDROID_HOME/.android
export ANDROID_AVD_HOME=$ANDROID_AVD_HOME/avd
export PATH=$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator
export PATH=$PATH:$SETUP_HOME/cmake/bin:$SETUP_HOME/node/bin
export PATH=$PATH:$SETUP_HOME/swift/usr/bin:$SETUP_HOME/miniconda3/condabin

GIT_CURL_VERBOSE=1
proxy_port=8888
export http_proxy=http://$local_ip:$proxy_port
export https_proxy=http://$local_ip:$proxy_port
PS1="$PS1($local_ip - $public_ip) ~> "

export GPG_TTY=$(tty)
# source $SETUP_HOME/ai/bin/activate
. "$HOME/.cargo/env"
# conda config --set auto_activate_base false
