class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'myweb.uth.tmc.edu':}
  dockeragent::node {'mydb.uth.tmc.edu':}
}
