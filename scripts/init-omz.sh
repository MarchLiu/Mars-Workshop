#!/usr/bin/env sh

!/bin/sh

ME=`whoami`

curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh |
 sh
sed -i -e "s/ZSH_THEME=\"[^\"]*\"/ZSH_THEME=\"random\"/" $HOME/.zshrc

sudo usermod -s /usr/bin/zsh $ME
