class r_role::webapp::wordpress {
  include r_profile::base
  include r_profile::database::mysql_server
  include r_profile::web_service::apache
  include r_profile::webapp::wordpress
}
