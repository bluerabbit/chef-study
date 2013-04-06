### Install

- VirtualBox
  - http://download.virtualbox.org/virtualbox/4.2.10/VirtualBox-4.2.10-84104-OSX.dmg
- Vagrant
  - http://files.vagrantup.com/packages/64e360814c3ad960d810456add977fd4c7d47ce6/Vagrant.dmg


    $ bundle install
    $ berks --path cookbooks
    $ vagrant up
    $ vagrant ssh-config --host vagrant01 >> ~/.ssh/config
    $ knife solo prepare vagrant01

#### knife-solo

```
$ knife solo cook vagrant01
```
