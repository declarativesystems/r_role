# R_role::Lb::haproxy
#
# A load balancer provided by HA Proxy
class r_role::lb::haproxy {
  include r_profile::base
  include r_profile::lb::haproxy
}
