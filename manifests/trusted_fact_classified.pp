# R_role::trusted_fact_classified
#
# Classify a system based on the presence of the trusted fact `pp_role`. If the
# role class specified does not exist, then include the base profile instead and
# print a warning message to the client. If no `pp_role` is set, then just
# include the base profile.
#
# @see https://forge.puppet.com/geoffwilliams/includable
#
# @example Assigning this role to all unclaimed nodes in `site.pp`
#   node default {
#     include r_role::trusted_fact_classified
#   }
#
#   # Alternatively, create a single group in the Puppet Enterprise Node
#   # Classifier and assign this class to it.
#
# @example Hiera data for selecting a different fallback (base) role
#   r_role::trusted_fact_classified::base_role_class: 'role::disable_vm'
#
# @example Hiera data to disable printing a warning message when pp_role class missing
#   r_role::trusted_fact_classified::warning: false
#
# @param base_role_class The fallback role to use if no `pp_role` is
#   set/avaiable
# @param warning If requested class does not exist we will print a warning
#   message informing the operator of this unless this parameter is set `false`
class r_role::trusted_fact_classified(
    String  $base_role_class  = "r_role::base",
    Boolean $warning          = true,
) {
  $pp_role = $trusted['extensions']['pp_role']
  if $pp_role {
    if includable($pp_role) {
      $role_class = $pp_role
    } else {

      if $warning {
        # display message on terminal when run interactively with `puppet agent -t`. This will also show up
        # in puppet console on the `log` tab of a report
        warning("Unable to assign role `${pp_role}`: class does not exist - falling back to `${base_role_class}`")
      }
      $role_class = $base_role_class
    }
  } else {
    $role_class = $base_role_class
  }

  include $role_class
}
