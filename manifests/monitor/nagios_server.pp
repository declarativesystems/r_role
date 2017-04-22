# R_role::Monitor::Nagios_server
#
# A nagios monitoring server
class r_role::monitor::nagios_server {
  include r_profile::base
  include r_profile::monitor::nagios_server
}
