#
class appcanary::config inherits appcanary {

  file { $config:
    ensure  => file,
    owner   => 0,
    group   => 0,
    mode    => '0644',
    content => template($config_template),
  }

  case $::operatingsystem {
    'ubuntu': {
      $paths += [ '/var/lib/dpkg/status' ]
    }
  }

}
