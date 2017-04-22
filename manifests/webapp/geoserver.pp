# R_role::Webapp::Geoserver
#
# Install GeoServer, a Java/web based GIS
class r_role::webapp::geoserver {
  include r_profile::base
  include r_profile::webapp::geoserver
}
