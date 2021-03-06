# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"
  # config.vm.network :forwarded_port, guest: 80, host: 4567
   

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "512"
  # end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Define a Vagrant Push strategy for pushing to Atlas. Other push strategies
  # such as FTP and Heroku are also available. See the documentation at
  # https://docs.vagrantup.com/v2/push/atlas.html for more information.
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   sudo apt-get update
  #   sudo apt-get install -y apache2
  # SHELL

  config.vm.define "uno" do |uno|
    uno.vm.box = "ubuntu2"
    uno.vm.hostname = "uno"   
    uno.vm.provider "virtualbox" do |vb|
       vb.name = "uno"
       vb.memory = "512"
       vb.cpus = "1"
    end
    
    uno.vm.network :private_network, :ip => "10.0.222.15"
    uno.vm.network :private_network, :ip => "192.168.122.101", netmask:"255.255.255.0",virtualbox__intnet: true, :virtualbox__intnet=>"mipropiared"
    uno.vm.provision :shell, path: "keep_alive_uno.sh"  
  end

  config.vm.define "dos" do |dos|
    dos.vm.box = "ubuntu2"
    dos.vm.hostname = "dos"    
    dos.vm.provider "virtualbox" do |vb|
       vb.name = "dos"
       vb.memory = "512"
       vb.cpus = "1"
    end
    
    dos.vm.network :private_network, :ip => "10.0.222.16"
    dos.vm.network :private_network, :ip => "192.168.122.104", netmask:"255.255.255.0",virtualbox__intnet: true, :virtualbox__intnet=>"mipropiared"
    dos.vm.provision :shell, path: "keep_alive_dos.sh"  
  end

  config.vm.define "servA" do |servA|
    servA.vm.box = "ubuntu2"
    servA.vm.hostname = "servA"    
    servA.vm.provider "virtualbox" do |vb|
       vb.name = "servA"
       vb.memory = "512"
       vb.cpus = "1"
    end
    
    servA.vm.network :private_network, :ip => "192.168.122.102", netmask:"255.255.255.0",virtualbox__intnet: true, :virtualbox__intnet=>"mipropiared"
    servA.vm.provision :shell, path: "bootstrap_A.sh"  
  end

  config.vm.define "servB" do |servB|
    servB.vm.box = "ubuntu2"
    servB.vm.hostname = "servB"    
    servB.vm.provider "virtualbox" do |vb|
       vb.name = "servB"
       vb.memory = "512"
       vb.cpus = "1"
    end
    
    servB.vm.network :private_network, :ip => "192.168.122.103", netmask:"255.255.255.0",virtualbox__intnet: true, :virtualbox__intnet=>"mipropiared"
    servB.vm.provision :shell, path: "bootstrap_B.sh"  
  end


end
