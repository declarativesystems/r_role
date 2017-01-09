class r_role::puppet::master {
  include r_profile::base
  include r_profile::puppet::master
  include r_profile::puppet::agent_installers
  include r_profile::puppet::hiera
  include r_profile::puppet::git_server
  include r_profile::puppet::auto_sign

}
