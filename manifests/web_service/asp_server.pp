# R_role::Web_service::Asp_server
#
# Deploy ASP, IIS and a user-defined website from Git on windows
class r_role::web_service::asp_server {
  include r_profile::base
  include r_profile::web_service::iis
  include r_profile::webapp::git_site
  include r_profile::database::sql_server
}
