#!/bin/zsh
# put this file under ~/usrs/username/

# put self into back up
cp $0 macshell.config

# zsh config
cp .zshrc macshell.config
cp -r .oh-my-zsh macshell.config

# bash config
cp .bash_profile macshell.config

# emacs config
cp .emacs macshell.config
cp -r .emacs.d macshell.config
