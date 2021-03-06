# oh-my-zsh
vcsrepo { "/home/$id/src/oh-my-zsh":
    ensure   => present,
    provider => git,
    source   => "https://github.com/pietrushnic/oh-my-zsh",
    user     => $id,
    owner    => $id,
    group    => $id
}
->
file { "/home/$id/.oh-my-zsh":
    ensure => link,
    target => "/home/$id/src/oh-my-zsh",
    owner  => $id,
    group  => $id
}
->
file { "/home/$id/.zshrc":
    ensure => link,
    target => "/home/$id/src/oh-my-zsh/zshrc",
    owner  => $id,
    group  => $id
}

# dotfiles
vcsrepo { "/home/$id/src/dotfiles":
    ensure   => present,
    provider => git,
    source   => "https://github.com/pietrushnic/dotfiles",
    user     => $id,
    owner    => $id,
    group    => $id
}
->
file { "/home/$id/.gitconfig":
    ensure => link,
    target => "/home/$id/src/dotfiles/gitconfig",
    owner  => $id,
    group  => $id
}
->
file { "/home/$id/.pythonrc":
    ensure => link,
    target => "/home/$id/src/dotfiles/pythonrc",
    owner  => $id,
    group  => $id
}
->
file { "/home/$id/.tmux.conf":
    ensure => link,
    target => "/home/$id/src/dotfiles/tmux.conf",
    owner  => $id,
    group  => $id
}
->
file { "/home/$id/.pryrc":
    ensure => link,
    target => "/home/$id/src/dotfiles/pryrc",
    owner  => $id,
    group  => $id
}

# spf13-vim
vcsrepo { "/home/$id/src/spf13-vim":
    ensure   => present,
    provider => git,
    source   => "https://github.com/pietrushnic/spf13-vim",
    user     => $id,
    owner    => $id,
    group    => $id
}
->
file { "/home/$id/.spf13-vim-3":
    ensure => link,
    target => "/home/$id/src/spf13-vim",
    owner  => $id,
    group  => $id
}
->
file { "/home/$id/.vimrc.local":
    ensure => link,
    target => "/home/$id/src/spf13-vim/.vimrc.local",
    owner  => $id,
    group  => $id
}
->
file { "/home/$id/.vimrc.bundles.local":
    ensure => link,
    target => "/home/$id/src/spf13-vim/.vimrc.bundles.local",
    owner  => $id,
    group  => $id
}
