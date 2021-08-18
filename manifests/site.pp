node default {
}
node 'uxtdapl7.uth.tmc.edu' {
  include role::master_server
}
node /^myweb/ {
  include role::app_server
}
node /^mydb/ {
  include role::db_server
}
