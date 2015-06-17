#!/usr/bin/env bash

# Get latest version of node
curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash -

apt-get update
apt-get install -y nodejs git

# Needed by bcrypt, pg, etc...
apt-get install -y g++

# Install postgres
apt-get install -y postgresql libpq-dev

# Set postgres password
sudo -u postgres psql -c "ALTER USER Postgres WITH PASSWORD 'secret'"
