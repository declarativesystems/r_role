class r_role::puppet::master {
  include r_profile::base
  include r_profile::puppet::master
  include r_profile::puppet::master::agent_installers
  include r_profile::puppet::master::hiera
  include r_profile::puppet::master::git_server
  include r_profile::puppet::master::autosign

}
