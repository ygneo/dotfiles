#!/bin/bash

# maybe this script is avaliable via wget, so it can start with:
# sudo apt-get install git
# git clone git@github.com:ygneo/linux-confs.git conf

## Add ppas and repositories keys ##

# docker
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
sudo sh -c "echo deb https://get.docker.com/ubuntu docker main > /etc/apt/sources.list.d/docker.list"


## Install packages ##

REQUIRED_PACKAGES="chromium-browser hamster-indicator terminator vim ipython python-pip virtualenvwrapper pidgin lxc-docker vmware-manager emacs23"
OPTIONAL_PACKAGES="postgresql-client libpq-dev libgeos-dev python-dev libmysqlclient-dev mysql-server mercurial"
SYSTEM_PACKAGES="$REQUIRED_PACKAGES $OPTIONAL_PACKAGES"

sudo apt-get update && sudo apt-get upgrade
sudo apt-get install $SYSTEM_PACKAGES


### Configure user enviroment and directories ###

# bash
if [ -f ~/.bashrc ]; then
  mv ~/.bashrc ~/.bashrc.old
fi

ln -s $(pwd)/.bashrc ~/.bashrc

source ~/.bashrc

# emacs
ln -s $(pwd)/.emacs.d ~/.emacs.d
ln -s $(pwd)/.emacs ~/.emacs

if [ ! -d ~/dev ]; then
   mkdir ~/dev
fi

# TODO: clone repos if they're not present

# TODO: create virtualenv / dockers

## Configure packages ##

# git
git config --global user.email "antonio.barcia@gmail.com"
git config --global user.name "ygneo"

# TODO pidgin configuration file
