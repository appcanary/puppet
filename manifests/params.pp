#
class appcanary::params {

  $api_key         = ''
  $paths           = []
  $config          = '/etc/appcanary/agent.conf'
  $config_template = 'appcanary/agent.conf.erb'
  $package_names   = [ 'appcanary' ]
  $package_ensure  = 'present'
  $service_name    = 'appcanary'
  $service_enable  = true
  $service_ensure  = 'running'
  $service_manage  = true
}
