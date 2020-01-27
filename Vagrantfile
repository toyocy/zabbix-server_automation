# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.synced_folder './ansible', '/home/vagrant/ansible', create: true, owner: 'vagrant', group: 'vagrant'
  config.vm.box = "centos/7"

  config.vm.define "zabbix_1" do |z1|
    z1.vm.hostname = "zabbix_1"
    z1.vm.provider "hyperv" do |h|
      h.vmname = "zabbix_1"
      h.memory = "4096"
      h.cpus = 2
    end
    z1.vm.provision "ansible_local" do |ansible|
      ansible.compatibility_mode = "2.0"
      ansible.provisioning_path = "/home/vagrant/ansible/"
      ansible.playbook = "zabbix_setup.yml"
      ansible.verbose        = true
      ansible.inventory_path = "inventory.ini"
      ansible.limit          = "all"
    end
  end

  # config.vm.define "postgres" do |ps|
  #   ps.vm.hostname = "postgres"
  #   ps.vm.provider "hyperv" do |h|
  #     h.vmname = "postgres"
  #     h.memory = "4096"
  #     h.cpus = 2
  #   end
  #   ps.vm.provision "ansible_local" do |ansible|
  #     ansible.compatibility_mode = "2.0"
  #     ansible.provisioning_path = "/home/vagrant/ansible/"
  #     ansible.playbook = "postgres_setup.yml"
  #     ansible.verbose        = true
  #     ansible.inventory_path = "inventory.ini"
  #     ansible.limit          = "all"
  #   end
  # end

  config.vm.define "zabbix_2" do |z2|
    z2.vm.hostname = "zabbix_2"
    z2.vm.provider "hyperv" do |h|
      h.vmname = "zabbix_2"
      h.memory = "4096"
      h.cpus = 2
    end
    z2.vm.provisionin "ansible_local" do |ansible|
          ansible.compatibility_mode = "2.0"
          ansible.provisioning_path = "/home/vagrant/ansible/"
          ansible.playbook = "zabbix_setup.yml"
          ansible.verbose        = true
          ansible.inventory_path = "inventory.ini"
          ansible.limit          = "all"
    end
  end
end
