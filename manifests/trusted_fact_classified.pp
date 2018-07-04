# R_role::trusted_fact_classified
#
# Classify a system based on the presence of the trusted fact `pp_role`. If the role
# class specified does not exist, then include the base profile instead and print a
# warning message. If no `pp_role` is set, then just include the base profile.
#
# @example Assigning this role to all unclaimed nodes in `site.pp`
#   node default {
#     include r_role::trusted_fact_classified
#   }
#
#   # Alternatively, create a single group in the Puppet Enterprise Node Classifier
#   # and assign this class to it.
#
# @param base_role The fallback role to use if no `pp_role` is set/avaiable
class r_role::trusted_fact_classified(
    String $base_role_class = "r_role::base",
) {
  $pp_role = $trusted['extensions']['pp_role']
  if $pp_role {
    if includable($pp_role) {
      $role_class = $pp_role
    } else {
      warning("Class ${pp_role} was not found - falling back to ${base_role_class}")
      $role_class = $base_role_class
    }
  } else {
    $role_class = $base_role_class
  }

  include $role_class
}
