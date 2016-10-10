class r_role::web_service::lamp_server {
  include r_profile::base
  include r_profile::web_service::apache
  include r_profile::webapp::git_site
}
