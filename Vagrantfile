Vagrant.configure("2") do |config|
  config.vm.define "VM1" do |vm|
    vm.vm.box = "bento/ubuntu-24.04"
    vm.vm.network "public_network", type: "dhcp", name: "vboxnet3" 
    vm.vm.network "forwarded_port", guest: 80, host: 8080
    vm.vm.synced_folder "./shared", "/vagrant_share"
    vm.vm.hostname = "webserver"
    vm.vm.provider "virtualbox" do |vi|
      vi.memory = 1024
      vi.cpus = 1
    end
    vm.vm.provision "shell", inline: <<-SHELL
      apt update
      apt install -y nginx
    SHELL
  end
  config.vm.define "VM2" do |vm|
    vm.vm.box = "bento/ubuntu-24.04"
    vm.vm.network "private_network", ip: "192.168.88.8"
    vm.vm.synced_folder "./shared", "/vagrant_share"
    vm.vm.hostname = "server1"
    vm.vm.provider "virtualbox" do |vi|
      vi.memory = 1024
      vi.cpus = 1
    vm.vm.provision "shell", path: "./shared/script.sh"
    end
  end
  config.vm.define "VM3" do |vm|
    vm.vm.box = "bento/ubuntu-24.04"
    vm.vm.network "public_network", ip: "192.168.56.4", bridge: "VirtualBox Host-Only Ethernet Adapter"
    vm.vm.synced_folder "./backup", "/Backup"
    vm.vm.hostname = "server2"
    vm.vm.provider "virtualbox" do |vi|
      vi.memory = 1024
      vi.cpus = 1
    end
  end
end