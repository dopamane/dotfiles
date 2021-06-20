#!/usr/bin/env bash

# prerequisites
sudo add-apt-repository -y ppa:hvr/ghc
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y build-essential make vim tmux kitty fonts-firacode

# set focus follow mouse
gsettings set org.gnome.desktop.wm.preferences focus-mode 'sloppy'
# set 12 hour clock
gsettings set org.gnome.desktop.interface clock-format 12h

# install libsecret
sudo apt-get install -y libsecret-1-0 libsecret-1-dev
sudo make --directory=/usr/share/doc/git/contrib/credential/libsecret

# configure git
git config --global user.email "dwc1295@gmail.com"
git config --global user.name "dopamane"
git config --global credential.helper /usr/share/doc/git/contrib/credential/libsecret/git-credential-libsecret

# links
mkdir -p $HOME/.config/kitty/ && ln -svf $(pwd)/.config/kitty/kitty.conf $HOME/.config/kitty/kitty.conf

ln -svf $(pwd)/.profile $HOME/.profile
ln -svf $(pwd)/.bashrc $HOME/.bashrc
ln -svf $(pwd)/.tmux.conf $HOME/.tmux.conf

source $HOME/.bashrc
