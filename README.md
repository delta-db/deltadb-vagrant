# deltadb-vagrant

Install Vagrant, VirtualBox and git
---
* http://www.vagrantup.com
* https://www.virtualbox.org (don't worry about setting up any VMs as the steps below will cover this)
* http://git-scm.com


Set Up DeltaDB
---
    $ git clone https://github.com/delta-db/deltadb-vagrant.git
    $ cd deltadb-vagrant
    $ vagrant up
    $ vagrant ssh
    $ ../set-up.sh # downloads the git repos


NPM Error
---
Note: You may receive an error like

    ENOENT: no such file or directory, chmod '/vagrant/app/deltadb-server/node_modules/http-server/bin/http-server'
    
due to a bug in npm. To fix this:

    $ cd /vagrant/app/deltadb-server
    $ npm uninstall http-server # replace http-server with the package mentioned in the error
    $ npm install


Launching VM & Running DeltaDB Server
---
    $ cd deltadb-vagrant
    $ vagrant up
    $ vagrant ssh
    $ cd deltadb-server

and then to launch DeltaDB

    $ npm run start

Then, to run examples against your local DeltaDB instance

    Use a browser to visit deltadb/examples/hello/index-local.html


Launch psql
---
    $ vagrant ssh
    $ sudo -u postgres psql
