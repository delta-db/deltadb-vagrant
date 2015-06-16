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
    $ cd /vagrant/app
    $ git clone https://github.com/delta-db/deltadb-server.git
    $ cd deltadb-server
    $ npm install
    $ cp config-default.js config.js



Launching VM & Testing
---
    $ cd deltadb-vagrant
    $ vagrant up
    $ vagrant ssh
    $ cd /vagrant/app/deltadb-server
    $ npm run test-node
