# R_role::Puppet::Master
#
# An bigger and better puppet master with built-in support for a base profile,
# autosigning, heira/eyaml and the most popular agent installers
class r_role::puppet::master {
  include r_profile::base
  include r_profile::puppet::master
  include r_profile::agent_installers
  include r_profile::autosign
  include r_profile::hiera
}
