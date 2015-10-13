Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"

  # Bootstrap script for configuring VM
  config.vm.provision :shell, path: "bootstrap.sh"

  # Forward port for browser testing
  config.vm.network :forwarded_port, guest:8001, host:8001

  # Forward port for npm inspector testing
  config.vm.network :forwarded_port, guest:8080, host:8080

  # config.vm.provider :virtualbox do |vb|
  #  vb.gui = true
  # end
end
