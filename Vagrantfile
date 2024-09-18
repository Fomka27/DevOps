Vagrant.configure("2") do |config|
  MEMORY = 1024
  CPUS = 1
  config.vm.define "VM1" do |vm|
    vm.vm.box = "ubuntu/jammy64"
    vm.vm.network "private_network", ip: "192.168.88.8"
    vm.vm.network "forwarded_port", guest: 80, host: 8080
    vm.vm.synced_folder "./shared", "/vagrant_share"
    vm.vm.hostname = "Server1"
    vm.vm.provider "virtualbox" do |vi|
      vi.memory = MEMORY
      vi.cpus = CPUS
    end  
    vm.vm.provision "shell", path: "./shared/script1.sh"
    vm.vm.disk :disk, size: "10GB", name: "extra_storage"
  end
  config.vm.define "VM2" do |vm|
    vm.vm.box = "ubuntu/jammy64"
    vm.vm.network "private_network", ip: "192.168.88.9"
    vm.vm.synced_folder "./shared", "/vagrant_share"
    vm.vm.hostname = "Server2"
    vm.vm.provider "virtualbox" do |vi|
      vi.memory = MEMORY
      vi.cpus = CPUS
    end  
    vm.vm.provision "shell", inline: <<-SHELL
      apt update
      apt install -y net-tools
    SHELL
  end
end