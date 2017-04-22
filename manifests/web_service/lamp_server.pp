# R_role::Web_service::Lamp_server
#
# Deploy an entire LAMP stack (Linux Apache, MySQL, PHP)+ base profile.  Also
# deploys a user-defined PHP webapp from git, so can be used for end-to-end
# deployment
class r_role::web_service::lamp_server {
  include r_profile::base
  include r_profile::database::mysql_server
  include r_profile::web_service::apache
  include r_profile::webapp::git_site
  include r_profile::webapp::php_config
}
