# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.network :forwarded_port, guest: 80, host: 8080          # LAMP localhost
  config.vm.network :forwarded_port, guest: 9000, host: 9000        # Default for LAMP
  config.vm.network :forwarded_port, guest: 9000, host: 9003        # Playgraph
  config.vm.network :forwarded_port, guest: 9006, host: 9006        # Ayamel-Examples
  config.vm.network :forwarded_port, guest: 9010, host: 9010        # DictionaryLookup
  config.vm.network :forwarded_port, guest: 27017, host: 27017
  config.vm.network "private_network", ip: "127.0.0.1"
  
  config.vm.provider "virtualbox" do |v|	# Make the virtual box run at a resonable speed
	v.memory = 2048
	v.cpus = 8
  end
  
  config.vm.provision "shell", path: "environment-setup.sh"
end