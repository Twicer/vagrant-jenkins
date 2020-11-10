# Vagrant Jenkins

With this repository you can create a local **[Jenkins server](https://www.jenkins.io/)** implementation with vagrant (CentOS 7 VM).


# Table of contents

- [Vagrant Jenkins](#vagrant-jenkins)
- [Table of contents](#table-of-contents)
  - [Usage](#usage)
    - [Dependencies](#dependencies)
    - [First usage](#first-usage)
    - [Credentials](#credentials)
  - [Used technologies & Software](#used-technologies--software)
    - [Bash script](#bash-script)
    - [Ansible](#ansible)
    - [Visual Studio Code](#visual-studio-code)
    - [Vagrant](#vagrant)
  - [Describe files](#describe-files)
    - [Vagrantfile](#vagrantfile)
    - [README.md](#readmemd)
    - [LICENSE](#license)
    - [.gitignore](#gitignore)
    - [install_scripts\docker_compose.sh](#install_scriptsdocker_composesh)
    - [install_scripts\docker.sh](#install_scriptsdockersh)
    - [install_scripts\jenkins.yaml](#install_scriptsjenkinsyaml)
    - [install_scripts\os_dep.sh](#install_scriptsos_depsh)
    - [install_scripts\requirements.yaml](#install_scriptsrequirementsyaml)
  - [License](#license-1)
  - [Author Information](#author-information)

## Usage

### Dependencies

From technology point of view:

- Installed Vagrant

- Windows OS (where you run 1_install.cmd)

### First usage

Change your current working directory here, and execute: `vagrant up`. It takes ~ 20mins to spin up the VM with vagrant.


If VM is up, and provision code was executed successfully (bash script), open `http://192.168.56.100:8080`in your browser.

### Credentials

Default credentials for installed Jenkins server.

Username: `admin`

Password: `admin`

## Used technologies & Software

### Bash script

Bash script is responsible to install OS dependencies to the VM && install docker.

### Ansible

Provisioning tool to set up Jenkins server. Ansible galaxy is in use as well.

### Visual Studio Code

This IDE was used to prepare and handle all of the code.

### Vagrant

[Vagrant](https://www.vagrantup.com/) is a hashicorp tool which provides you a way to spin up a virtual machine in your local computer (via virtualbox). It is ideal to reproduce the server in your local computer, without any cloud provider.

## Describe files

### Vagrantfile

Settings of VM created by vagrant.

### README.md

This file, what you are reading now. It is in [Markdown](https://www.markdownguide.org/getting-started/) language.

### LICENSE

License file.

### .gitignore

File to define excluded files, folders, patterns by git.

### install_scripts\docker_compose.sh

Bash script to install [docker compose](https://docs.docker.com/compose/) to the VM. Docker is a dependency. After installed, Jenkins is able to use docker compose.

### install_scripts\docker.sh

Bash script to install [docker](https://www.docker.com/) to the VM. After installed, Jenkins is able to use docker.

### install_scripts\jenkins.yaml

Ansible playbook to install jenkins.

### install_scripts\os_dep.sh

Bash script to install OS dependencies to the VM.

### install_scripts\requirements.yaml

Ansible playbook define role usage (ansible-role-jenkins).

## License

MIT

## Author Information

Peter Mikaczo - <petermikaczo@gmail.com>
