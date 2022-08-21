# Crystal Development Environment Using Vagrant

## Requirements
* [Vagrant](http://vagrantup.com)
* [VirtualBox](https://www.virtualbox.org)

## Setup
    $ git clone https://github.com/wjhames/crystal-vagrant.git
    $ cd crystal-vagrant
    $ vagrant up

**Note:** Don't forget to provision as an administrator.

## Usage
A `./shared` folder will be generated on the host machine that links to `./vagrant` folder on the virtual machine.

Ssh into the virtual machine with:

    $ vagrant ssh