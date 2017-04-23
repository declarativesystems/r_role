# R_role::Fact_classified
#
# Classify a system based on the presence of custom fact `role`
class r_role::fact_classified {
  # always include our base SOE if no role is specified.  Don't just
  # randomly always include profiles::base as this could have unwanted
  # side effects if we need to exclude it for some reason
  if dig($facts, 'role') {
    include $::role
  } else {
    include r_profile::base
  }
}
