#!/bin/bash

mkdir ~/.vim
curl https://raw.githubusercontent.com/kp9001/dotfiles/master/vim/vimrc -o ~/.vim/vimrc

touch ~/.mac_tmux.conf
curl https://raw.githubusercontent.com/kp9001/dotfiles/master/tmux/theme_tmux.conf -o ~/.theme_tmux.conf
curl https://raw.githubusercontent.com/kp9001/dotfiles/master/tmux/tmux.conf -o ~/.tmux.conf

mv ~/.bashrc ~/.bashrc.old
curl https://raw.githubusercontent.com/kp9001/dotfiles/master/shell/bashrc -o ~/.bashrc
