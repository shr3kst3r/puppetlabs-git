# Class: git
#
# This class installs git
#
# Actions:
#   - Install the git package
#
# Sample Usage:
#  class { 'git': }
#

class git {
  case $operatingsystem {
    centos, redhat, debian, ubuntu: { $package_name = 'git' }
    default: { $package_name = 'git-core' }
  }

  package { $package_name:
    ensure => installed,
  }
}
