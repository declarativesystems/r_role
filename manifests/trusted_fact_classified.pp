# R_role::trusted_fact_classified
#
# Classify a system based on the presence of the trusted fact `pp_role`
class r_role::trusted_fact_classified {
  # always include our base SOE if no role is specified.  Don't just
  # randomly always include profiles::base as this could have unwanted
  # side effects if we need to exclude it for some reason
  if $trusted['extensions']['pp_role'] {
    include $trusted['extensions']['pp_role']
  } else {
    include r_profile::base
  }
}
