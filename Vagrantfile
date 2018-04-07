# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
 config.vm.define "master" do |master|
	master.vm.box = "ubuntu/xenial32"
	master.vm.provider :virtualbox do |vb|
		vb.customize ['modifyvm', :id, '--memory', '750' ]
		vb.customize ['modifyvm', :id, '--cpus', '2' ]
		vb.customize ['modifyvm', :id, '--name', 'Maestro']
		vb.customize ['modifyvm', :id, '--cpuexecutioncap', '60']
 end

 master.vm.network "private_network", ip: "10.11.12.3"
 master.vm.provision "shell", path: "startupHA.sh"
 master.vm.synced_folder "./maestro", "/tmp"

 end
