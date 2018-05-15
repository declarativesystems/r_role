# R_role::Puppet::Master
#
# An bigger and better puppet master with built-in support for a base profile,
# autosigning, heira/eyaml and the most popular agent installers
class r_role::puppet::master {


  include r_role::puppet::master_minimal

  include r_profile::puppet::master::agent_installers
  include r_profile::puppet::master::autosign
  include r_profile::puppet::master::hiera_eyaml
}
