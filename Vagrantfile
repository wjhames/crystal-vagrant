Vagrant.configure("2") do |config|

    config.vm.box = "ubuntu/kinetic64"
    config.vm.hostname = 'crystalBox'

    config.vm.provider "virtualbox" do |box|
        box.memory = 4096
        box.cpus = 6
    end

    config.vm.network "private_network", ip: "192.168.30.30", hostname: true

    config.vm.synced_folder "./shared", "/vagrant", create: true

    config.vm.provision :shell, path: "provisions/bootstrap.sh"

end
