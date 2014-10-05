# oh-my-zsh
vcsrepo { "/home/$id/src/oh-my-zsh":
    ensure   => present,
    provider => git,
    source   => "https://github.com/pietrushnic/oh-my-zsh",
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
}
->
file { "/home/$id/.spf13-vim-3":
    ensure => link,
    target => "/home/$id/src/spf13-vim",
    owner  => $id,
    group  => $id
}
