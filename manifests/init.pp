class appcanary (
  $api_key = $appcanary::params::api_key,
) inherits appcanary::params {

  anchor { 'appcanary::begin': } ->
  class { '::appcanary::install': } ->
  class { '::appcanary::config': } ~>
  class { ':appcanary::service': } ->
  anchor { 'appcanary::end': }

}
