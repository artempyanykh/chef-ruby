# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "deshene/precise64-2.0.0-11.10.4"

  config.vm.network :private_network, ip: "192.168.42.42"

  config.vm.provision :chef_solo do |chef|
    chef.add_recipe 'ruby::vagrant'
  end
end
