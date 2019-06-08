#! /usr/bin/env sh 

set -e

current_dir=$(pwd)
new_dir=/home/user

# awesome-rc.lua => ~/.config/awesome/rc.lua
# qutebrowser-config.py => ~/.config/qutebrowser/config.py
# tmux.conf => ~/.tmux.conf
# configuration.nix => /etc/nixos/configuration.nix
# gitconfig => ~/.gitconfig
# git-commit-template ~/.git-commit-template
# zshrc => ~/.zshrc
# /keybase/private/diggan/docs => ~/docs
# alacritty.yml => ~/.config/alacritty/alacritty.yml

# Symlink configs into the right place
ln -s $current_dir/awesome-rc.lua $new_dir/.config/awesome/rc.lua
ln -s $current_dir/qutebrowser-config.py $new_dir/.config/qutebrowser/config.py
ln -s $current_dir/tmux.conf $new_dir/.tmux.conf
sudo ln -s $current_dir/configuration.nix /etc/nixos/configuration.nix
ln -s $current_dir/gitconfig $new_dir/.gitconfig
ln -s $current_dir/git-commit-template $new_dir/.git-commit-template
ln -s $current_dir/zshrc $new_dir/.zshrc
ln -s /keybase/private/diggan/docs $new_dir/docs
ln -s $current_dir/alacritty.yml $new_dir/.config/alacritty/alacritty.yml

# More packages to install
# Just a bunch of packages I use sometimes
# youtube-dl
# ffmpeg
# zip/unzip
# yubico
# vagrant
# virtualbox
# valgrind
# wine + vkd3d
# visualvm
# wacom
# git
# gimp
# gnucash
# golang
# go-ipfs
# godot
# wireshark
# keybase
# graphviz
# ipscan
# telegram
# tmux
# irccloud
# jq
# krita
# java/clojure/leingen
# aria2c
# asciinema
# leocad
# meld
# nmap
# nodejs/npm
# obs-studio
# wireguard
# parallel
# pv
# python
# qemu
# rfc
# recordmydesktop
# ruby
# scanmem
# slack-desktop
# spotify
# steam
# strace
# tcpdump
# aspell
# audacity
# autojump
# zsh
# blender
# bluez
# cdnjs
# docker/containerd/docker-compose/docker-machine
# crystal
# curl
# deluge or transmission-gtk
# discord
