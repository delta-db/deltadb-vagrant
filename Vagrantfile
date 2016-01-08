Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/trusty64"

  # Use a private network so that we don't have to worry about forwarding ports
  config.vm.network "private_network", ip: "192.168.50.6"

  config.vm.provider "virtualbox" do |v|
    # Default of 512 MB is too little for an `npm install`
    v.memory = 2048

    # Only allow drift of 1 sec, instead of 20 min default
    v.customize [ "guestproperty", "set", :id, "/VirtualBox/GuestAdd/VBoxService/--timesync-set-threshold", 1000 ]
  end

  # Bootstrap script for configuring VM
  config.vm.provision :shell, path: "bootstrap.sh"

  # Forward port for web server
  config.vm.network :forwarded_port, guest:8001, host:8001

  # Forward port for npm inspector testing
  config.vm.network :forwarded_port, guest:8080, host:8080

  # Forward port for db server
  config.vm.network :forwarded_port, guest:8090, host:8090

  # Forward port for test db server
  config.vm.network :forwarded_port, guest:8091, host:8091

  # config.vm.provider :virtualbox do |vb|
  #  vb.gui = true
  # end
end
