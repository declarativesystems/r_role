# R_role::Web_service::Tomcat
#
# Deploy a tomcat application server
class r_role::web_service::tomcat {
  include r_profile::base
  include r_profile::web_service::tomcat
}
