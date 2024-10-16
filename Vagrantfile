Vagrant.configure("2") do |config|
  MEMORY = 1024
  CPUS = 1
  config.vm.define "VM1" do |vm|
    vm.vm.box = "bento/ubuntu-24.04"
    vm.vm.network "public_network", type: "dhcp"
    vm.vm.synced_folder "./shared", "/vagrant_share"
    vm.vm.hostname = "msqlserver"
    vm.vm.provider "virtualbox" do |vi|
      vi.memory = MEMORY
      vi.cpus = CPUS
    vm.vm.provision "shell", path: "./shared/install.sh"
    end
  end
end