class appcanary (

  $api_key = $appcanary::params::api_key,
  $paths   = $appcanary::params::paths,

) inherits appcanary::params {

  validate_string($api_key)
  validate_array($paths)
  validate_absolute_path($config)
  validate_string($config_template)
  validate_array($package_names)
  validate_string($package_ensure)
  validate_string($service_name)
  validate_bool($service_enable)
  validate_string($service_ensure)
  validate_bool($service_manage)

  anchor { 'appcanary::begin': } ->
  class { '::appcanary::prereq': } ->
  class { '::appcanary::install': } ->
  class { '::appcanary::config': } ~>
  class { '::appcanary::service': } ->
  anchor { 'appcanary::end': }

}
