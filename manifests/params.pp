#
class appcanary::params {

  $api_key         = ''
  $paths           = []
  $config          = '/etc/appcanary/agent.yml'
  $config_template = 'appcanary/agent.yml.erb'
  $package_names   = [ 'appcanary' ]
  $package_ensure  = 'present'
  $service_name    = 'appcanary'
  $service_enable  = true
  $service_ensure  = 'running'
  $service_manage  = true
}
