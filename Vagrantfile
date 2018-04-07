# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
 config.vm.define "master" do |master|
	master.vm.network "private_network", ip: "10.11.12.3"
	master.vm.provision "shell", path: "startupHA.sh"
	master.vm.box = "ubuntu/xenial32"
	master.vm.provider :virtualbox do |vb|
		vb.customize ['modifyvm', :id, '--memory', '750' ]
		vb.customize ['modifyvm', :id, '--cpus', '2' ]
		vb.customize ['modifyvm', :id, '--name', 'Maestro']
		vb.customize ['modifyvm', :id, '--cpuexecutioncap', '60']
end
end

config.vm.define "node1" do |node1|
        node1.vm.network "private_network", ip: "10.11.12.4"
        node1.vm.box = "ubuntu/xenial32"
	node1.vm.provision "shell", path: "startupNode.sh", args: ['nodo1']
        node1.vm.provider :virtualbox do |vb|
                vb.customize ['modifyvm', :id, '--memory', '250' ]
                vb.customize ['modifyvm', :id, '--cpus', '1' ]
                vb.customize ['modifyvm', :id, '--name', 'Nodo1']
                vb.customize ['modifyvm', :id, '--cpuexecutioncap', '60']
end
end

config.vm.define "node2" do |node2|
        node2.vm.network "private_network", ip: "10.11.12.5"
        node2.vm.box = "ubuntu/xenial32"
        node2.vm.provision "shell", path: "startupNode.sh", args: ['nodo2']
        node2.vm.provider :virtualbox do |vb|
                vb.customize ['modifyvm', :id, '--memory', '250' ]
                vb.customize ['modifyvm', :id, '--cpus', '1' ]
                vb.customize ['modifyvm', :id, '--name', 'Nodo2']
                vb.customize ['modifyvm', :id, '--cpuexecutioncap', '60']
end
end

config.vm.define "node3" do |node3|
        node3.vm.network "private_network", ip: "10.11.12.6"
        node3.vm.box = "ubuntu/xenial32"
        node3.vm.provision "shell", path: "startupNode.sh", args: ['nodo3']
        node3.vm.provider :virtualbox do |vb|
                vb.customize ['modifyvm', :id, '--memory', '250' ]
                vb.customize ['modifyvm', :id, '--cpus', '1' ]
                vb.customize ['modifyvm', :id, '--name', 'Nodo3']
                vb.customize ['modifyvm', :id, '--cpuexecutioncap', '60']
end
end

end
