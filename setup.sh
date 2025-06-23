#!/bin/bash

sudo script/root-setup.sh
script/user-setup.sh

cd ..
git clone https://github.com/senidenary/dotfiles.git
./dotfiles/install

git clone https://github.com/mwh/dragon.git
cd dragon
make
cp dragon $HOME/bin

