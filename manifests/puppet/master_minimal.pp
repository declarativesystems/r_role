# R_role::Puppet::Master_minimal
#
# A Puppet Master server that applies a base profile to give some creature
# comforts
class r_role::puppet::master_minmal {
  include r_profile::base
  include r_profile::puppet::master
}
