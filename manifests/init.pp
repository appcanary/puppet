class appcanary {
  include 'computology/packagecloud'
  $appcanary::params::api_key
) inherits appcanary::params {

  anchor { 'appcanary::begin' } ->
  class { '::appcanary::install': } ->
  class { '::appcanary::config': } ~>
  class { ':appcanary::service': } ->
  anchor { 'appcanary::end': }

}
