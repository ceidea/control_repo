node default {
    file { '/root/README':
        ensure => file,
        content => 'Do not look at me',
    }
}
