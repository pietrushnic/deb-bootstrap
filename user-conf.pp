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

# task
vcsrepo { "/home/$id/src/taskwarrior":
    ensure   => present,
    provider => git,
    source   => "git@bitbucket.org:pietrushnic/taskwarrior.git",
    user     => $id,
    owner    => $id,
    group    => $id
}
->
file { "/home/$id/.task":
    ensure => link,
    target => "/home/$id/src/taskwarrior/task",
    owner  => $id,
    group  => $id
}
->
file { "/home/$id/.taskrc":
    ensure => link,
    target => "/home/$id/src/taskwarrior/taskrc",
    owner  => $id,
    group  => $id
}

# tmuxinator
vcsrepo { "/home/$id/src/tmuxinator-conf":
    ensure   => present,
    provider => git,
    source   => "git@bitbucket.org:pietrushnic/tmuxinator-conf.git",
    user     => $id,
    owner    => $id,
    group    => $id
}
->
file { "/home/$id/.tmuxinator":
    ensure => link,
    target => "/home/$id/src/tmuxinator-conf",
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
