class { 'sudo':
    config_file_replace => false,
}

$apt_pkgs = [ "vim", "zsh", "task", "tmux", "mr", "build-essential". "libncurses5-dev", "exuberant-ctags", "cscope" ]

package { $apt_pkgs: ensure => present }

user { "$id":
    ensure => present,
    shell  => "/bin/zsh",
}
