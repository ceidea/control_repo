node default {
    file { '/root/README':
        ensure => file,
        content => "Do not read me!\nA contradiction, no?\n",
        owner => "root",
    }
}
