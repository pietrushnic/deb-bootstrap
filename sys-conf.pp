class { 'sudo': }
$apt_pkgs = [ "vim", "zsh", "task", "tmux", "mr" ]

package { $apt_pkgs: ensure => present }
