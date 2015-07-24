#
class appcanary::install inherits appcanary {

  package { 'appcanary':
    ensure => $package_ensure,
    name   => $package_name,
  }
}
