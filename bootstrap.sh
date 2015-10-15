#!/usr/bin/env bash

# Get latest version of node
curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash -

# Update apt-get
apt-get update

# Install node and git
apt-get install -y nodejs build-essential git

# Update npm
npm install npm -g

# Needed by bcrypt, pg, etc...
apt-get install -y g++

# Needed for selenium testing
apt-get install -y default-jre

# Install phantomjs manually as including it in package.json generates errors during npm install
apt-get install -y phantomjs

# Install postgres
apt-get install -y postgresql libpq-dev

# Set postgres password
sudo -u postgres psql -c "ALTER USER Postgres WITH PASSWORD 'secret'"

# Install globally for convenience
npm install -g mocha
npm install -g istanbul
npm install -g node-inspector


##################################################################################
# ENABLE GUI - DOESN'T APPEAR TO WORK, NEED TO ENABLE vb.gui = true IN Vagrantfile
##################################################################################

# Install UI so that can test with Firefox and Chrome

# Install Ubuntu Desktop
# apt-get install ubuntu-desktop # unable to run any programs

# Or, install minimalist GUI
# apt-get install xorg
# apt-get -y install openbox # comes up with blank screen

# Or, install gnome-shell
# sudo apt-get -y install gnome-shell # firefox crashes

# Install Firefox
# apt-get install -y firefox
