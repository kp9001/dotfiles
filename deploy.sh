#!/bin/bash

mkdir ~/.vim
curl https://raw.githubusercontent.com/kp9001/dotfiles/master/vim/vimrc -o ~/.vim/vimrc

curl https://raw.githubusercontent.com/kp9001/dotfiles/master/tmux/theme_tmux.conf -o ~/.theme_tmux.conf
curl https://raw.githubusercontent.com/kp9001/dotfiles/master/tmux/tmux.conf -o ~/.tmux.conf

mkdir ~/.config/alacritty
curl https://raw.githubusercontent.com/kp9001/dotfiles/master/alacritty/alacritty.toml -o ~/.config/alacritty/alacritty.toml 

mkdir ~/.config/zarathustra
curl https://raw.githubusercontent.com/kp9001/dotfiles/master/zarathustra/zarathustrarc -o ~/.config/zarathustra/zarathustrarc

curl https://raw.githubusercontent.com/kp9001/dotfiles/master/shell/bashrc -o ~/.bashrc.new
[[ $(diff ~/.bashrc ~/.bashrc.new) ]] && ( mv ~/.bashrc ~/.bashrc.old; mv ~/.bashrc.new ~/.bashrc; rm ~/.bashrc.new ) || rm ~/.bashrc.new
