# -*- mode: ruby -*-
# vi: set ft=ruby :
BASE_IP = "192.168.33."

Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
    v.cpus = 2
  end
  config.vm.define "app-1" do |app|
    app.vm.box = "ubuntu/xenial64"
    app.vm.network "private_network", ip: "#{BASE_IP}1"
  end  
  config.vm.define "app-2" do |app|
    app.vm.box = "ubuntu/xenial64"
    app.vm.network "private_network", ip: "#{BASE_IP}2"
  end  
end
