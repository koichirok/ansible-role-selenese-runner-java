# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.define "linux"
  config.vm.provision "install_java", type: "ansible" do |ansible|
    ansible.playbook = File.expand_path("../playbooks/install-java.yml", File.dirname(__FILE__))
  end
end
