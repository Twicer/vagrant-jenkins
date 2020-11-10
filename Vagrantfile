# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "geerlingguy/centos7"
  config.vm.network "private_network", ip: "192.168.56.100"
  config.vm.provider "virtualbox" do |vb|
   vb.memory = "2048"
 end
 #https://www.vagrantup.com/docs/provisioning/ansible_local.html
 config.vm.provision "shell", path: "install_scripts/os_dep.sh"
  config.vm.provision "ansible_local" do |ansible|
    ansible.become = true
    ansible.playbook = "install_scripts/jenkins.yaml"
    ansible.galaxy_role_file = "install_scripts/requirements.yaml"
    ansible.galaxy_roles_path = "/etc/ansible/roles"
    ansible.galaxy_command = "sudo ansible-galaxy install --role-file=%{role_file} --roles-path=%{roles_path} --force"
  end
  config.vm.provision "shell", path: "install_scripts/docker.sh"
  config.vm.provision "shell", path: "install_scripts/docker_compose.sh"
end
