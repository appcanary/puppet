#
class appcanary::install inherits appcanary {

  case $::operatingsystem {
    'debian', 'ubuntu': {
      $type = 'deb'
    }
    'RedHat', 'redhat', 'CentOS', 'centos', 'Amazon', 'Fedora', 'Scientific', 'OracleLinux', 'OEL': {
      $type = 'rpm'
    }
  }

  include packagecloud
  packagecloud::repo { "appcanary/agent":
    type => $type,
  }

  package { 'appcanary':
    ensure => $package_ensure,
    name   => $package_name,
  }
}
