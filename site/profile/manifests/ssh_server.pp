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
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDN9jcp4cqXQMjPhLf+Yk9fyS+Z0PTJrSjuraJN6PBnxAKfoccKfmYZG1rIs0P7fGANQproNepEm2ow/JbQE3Ngguh5JMRwmkfNJP7tA8RZcdynFTDqKcN/a+mnSUbogjjI3kUk3pVyMZ4zkdUhCZ2Ph2aNb+ahnEgvIjqyuQNaoQqJCzB2/MVEponOfkBNXC+A4fperN2Os36yrCEbc/JibeWtnkx2ZKc2aaLtKpEI8PeeEv6yUFnsgQ49+krXEfqHTulHwygSnxNmddLZ8tgzMp0KnlQ8h9DsApfxdEd6pr9F0qZhxqaRYe/8BiJ03vNnILtY7DTiuRdvj0Ems69F',
  }
}
