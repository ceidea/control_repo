node default {
}
node 'uxtdapl7.uth.tmc.edu' {
  include role::master_server
  file {'/root/README':
    ensure => file,
    content => "This ${os[name]} is ${fqdn}\n",
  }
}
node /^myweb/ {
  include role::app_server
}
node /^mydb/ {
  include role::db_server
}
node 'mynecraft.uth.tmc.edu' {
  include role::mine_server
}
