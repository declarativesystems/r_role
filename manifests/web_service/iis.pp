# R_role::Web_service::Iis
#
# Configure the IIS Web Server on windows
class r_role::web_service::iis {
  include r_profile::base
  include r_profile::web_service::iis
}
