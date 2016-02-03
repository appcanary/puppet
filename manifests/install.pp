#
class appcanary::install inherits appcanary {

  package { $package_names:
    ensure => $package_ensure,
  }

}
