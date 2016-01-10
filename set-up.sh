#!/usr/bin/env bash

# NOTE: the vagrant shared/synced folders construct occasionally causes ENOENT errrors with `npm
# install` even when enabling symlinks in Vagrantfile. Using the `no-bin-links` option leads to
# "Maximum call stack size exceeded" errors. The only way that I was able to reliably issue a `npm
# install` was by doing it in an unshared folder. Therefore, we download the source files in an
# unshared folder, issue `npm install`, and then move the files.

cd /home/vagrant

mv /vagrant/app .

cd /home/vagrant/app

git clone https://github.com/delta-db/deltadb.git
cd deltadb
npm install
cd ../

git clone https://github.com/delta-db/deltadb-common-utils.git

git clone https://github.com/delta-db/deltadb-orm-nosql.git

git clone https://github.com/delta-db/deltadb-orm-sql.git

git clone https://github.com/delta-db/deltadb-server.git
cd deltadb-server
cp config-default.json config.json
npm install
cd ../

mv /home/vagrant/app /vagrant

cd /vagrant/app
