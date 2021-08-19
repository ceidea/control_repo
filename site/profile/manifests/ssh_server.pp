class profile::ssh_server {
  package { 'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@uxtdapl7.uth.tmc.edu':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => "${ssh[rsa[key]]}"
  }
}
