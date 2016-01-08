#!/usr/bin/env bash

cd app

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
