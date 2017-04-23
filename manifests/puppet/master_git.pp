# Role::Puppet::Master_git
#
# A fully featured puppet master that includes a small built-in git server to
# get you started
class r_role::puppet::master_git {
  include r_role::puppet::master

  include r_profile::puppet::master::git_server
}
