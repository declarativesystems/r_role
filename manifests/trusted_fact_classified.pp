class role::trusted_fact_classified {
  # always include our base SOE if no role is specified.  Don't just
  # randomly always include profiles::base as this could have unwanted
  # side effects if we need to exclude it for some reason
  if $trusted['extensions']['pp_role'] {
    include $trusted['extensions']['pp_role']
  } else {
    include r_profile::base
  }
}
