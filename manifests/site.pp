node default {
}
node 'uxtdapl7.uth.tmc.edu' {
  include role::master_server
  file { '/root/README':
    ensure => file,
    content => "This machine is really ${os.family} at ${fqdn}\n",
  }
}
node /^myweb/ {
  include role::app_server
}
node /^mydb/ {
  include role::db_server
}
