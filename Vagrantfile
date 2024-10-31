Vagrant.configure("2") do |config|
  MEMORY = 1024
  CPUS = 1
  config.vm.define "Node-M" do |vm|
    vm.vm.box = "bento/ubuntu-24.04"
    vm.vm.network "private_network", ip: "192.168.88.2"
    vm.vm.synced_folder "./shared", "/vagrant_share"
    vm.vm.hostname = "mongoserver"
    vm.vm.provider "virtualbox" do |vi|
      vi.memory = MEMORY
      vi.cpus = CPUS
      vm.vm.provision "shell", inline: <<-SHELL
      sudo apt update
      sudo apt install curl apt-transport-https ca-certificates software-properties-common
      sudo apt install docker.io -y
      curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
      echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
      sudo apt update
      sudo apt install -y docker-ce
      sudo systemctl start docker
      sudo systemctl enable docker
    SHELL
    end
  end
  config.vm.define "Node1" do |vm|
    vm.vm.box = "bento/ubuntu-24.04"
    vm.vm.network "private_network", ip: "192.168.88.3"
    vm.vm.synced_folder "./shared", "/vagrant_share"
    vm.vm.hostname = "mongoserver"
    vm.vm.provider "virtualbox" do |vi|
      vi.memory = MEMORY
      vi.cpus = CPUS
      vm.vm.provision "shell", inline: <<-SHELL
      sudo apt update
      sudo apt install curl apt-transport-https ca-certificates software-properties-common
      sudo apt install docker.io -y
      curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
      echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
      sudo apt update
      sudo apt install -y docker-ce
      sudo systemctl start docker
      sudo systemctl enable docker
    SHELL
    end
  end
  config.vm.define "Node2" do |vm|
    vm.vm.box = "bento/ubuntu-24.04"
    vm.vm.network "private_network", ip: "192.168.88.4"
    vm.vm.synced_folder "./shared", "/vagrant_share"
    vm.vm.hostname = "mongoserver"
    vm.vm.provider "virtualbox" do |vi|
      vi.memory = MEMORY
      vi.cpus = CPUS
      vm.vm.provision "shell", inline: <<-SHELL
      sudo apt update
      sudo apt install curl apt-transport-https ca-certificates software-properties-common
      sudo apt install docker.io -y
      curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
      echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
      sudo apt update
      sudo apt install -y docker-ce
      sudo systemctl start docker
      sudo systemctl enable docker
    SHELL
    end
  end
end
