# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.provision "ansible_bootstrap", type: "ansible" do |ansible|
    ansible.playbook = File.expand_path("../playbooks/install-roles.yml", File.dirname(__FILE__))
  end
end
