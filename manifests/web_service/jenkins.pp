# R_role::Web_server::Jenkins
#
# Deploy a Jenkins CI server
class r_role::web_service::jenkins {
  include r_profile::base
  include r_profile::jenkins
}
