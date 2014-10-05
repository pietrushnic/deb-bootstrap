#!/bin/bash
sudo puppet module install puppetlabs-vcsrepo
sudo puppet module install saz-sudo
sudo puppet apply $HOME/src/deb-bootstrap/sys-conf.pp
sed "s/\$id/${USER}/" $HOME/src/deb-bootstrap/user-conf.pp
sudo puppet apply $HOME/src/deb-bootstrap/user-conf.pp
