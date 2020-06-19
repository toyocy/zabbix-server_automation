# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.synced_folder './ansible', '/opt/ansible', create: true, owner: 'vagrant', group: 'vagrant'
  config.vm.box = "centos/7"

  config.vm.define "zabbix5-sv" do |z|
    z.vm.hostname = "zabbix5-sv"
    z.vm.provider "hyperv" do |h|
      h.vmname = "zabbix5-sv"
      h.memory = "4096"
      h.cpus = 2
    end
    z.vm.provision "ansible_local" do |ansible|
      ansible.compatibility_mode = "2.0"
      ansible.provisioning_path = "/opt/ansible/"
      ansible.playbook = "zabbix_setup.yml"
      ansible.verbose        = true
      ansible.inventory_path = "inventory.ini"
      ansible.limit          = "all"
    end
  end
end
