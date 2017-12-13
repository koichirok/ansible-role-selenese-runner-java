# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.define "freebsd"
  config.vm.provision "install_python", type: "shell", inline: "sudo pkg install -q -y python2"

  config.vm.provision "install_java", type: "ansible" do |ansible|
    ansible.playbook = File.expand_path("../playbooks/install-java.yml", File.dirname(__FILE__))
    ansible.raw_arguments = [
      "--extra-vars=ansible_python_interpreter=/usr/local/bin/python2.7",
    ]
  end
end
