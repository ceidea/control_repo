class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'myweb.uth.tmc.edu':}
  dockeragent::node {'mydb.uth.tmc.edu':}
  dockeragent::node {'mynecraft':}
  host { 'mydb.uth.tmc.edu':
    ensure => present,
    ip     => '172.18.0.2',
  }
  host { 'myweb.uth.tmc.edu':
    ensure => present,
    ip     => '172.18.0.3',
  }
}
