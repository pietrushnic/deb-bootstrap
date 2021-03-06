#!/bin/bash
sudo puppet module install puppetlabs-vcsrepo
sudo puppet module install saz-sudo
sed -i.bak "s/\$id/${USER}/" $HOME/src/deb-bootstrap/*.pp
sudo puppet apply $HOME/src/deb-bootstrap/sys-conf.pp
sudo puppet apply $HOME/src/deb-bootstrap/user-conf.pp

#bootstrap spf13-vim
cd $HOME/.spf13-vim-3 && ./bootstrap.sh
