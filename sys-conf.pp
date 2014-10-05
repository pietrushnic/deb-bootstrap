class { 'sudo':
    config_file_replace => false,
}

$apt_pkgs = [ "vim", "zsh", "task", "tmux", "mr" ]

package { $apt_pkgs: ensure => present }

user { "$id":
    ensure => present,
    shell  => "/bin/zsh",
}
