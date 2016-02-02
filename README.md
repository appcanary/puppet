<a href="https://appcanary.com"><img src="https://github.com/appcanary/puppet-appcanary/raw/master/appcanary-hero.png" /></a>

# puppet-appcanary

####Table of Contents

1. [Description](#description)
2. [Setup - The basics of getting started with Appcanary](#setup)
    * [Setup requirements](#setup-requirements)
    * [Beginning with Appcanary](#beginning-with-Appcanary)
3. [Usage](#usage)
4. [Reference](#reference)
5. [Limitations](#limitations)
6. [Development](#development)

##Description

Appcanary is a security service that monitors your infrastructure for security vulnerabilities. This module will manage the agent on your hosts.

You'll need to provide the module with your API key and a list of paths to monitor.

##Setup

###Setup Requirements

The Appcanary agent package is hosted on packagecloud.io, so be sure to grab computology/packagecloud from the Forge. You can just add the following to your Puppetfile:

`mod 'computology/packagecloud'`

###Beginning with Appcanary 

You'll need your API key from https://appcanary.com/settings. With that in hand this will get you started:

```puppet
class { '::appcanary':
  api_key: yourapikeyhere
}
```

##Usage

To have Appcanary monitor the gems in your Ruby application for vulnerabilities you need to provide a path to your Gemfile.lock:

```puppet
class { '::appcanary':
  api_key: yourapikeyhere
  paths:
    - /path/to/your/Gemfile.lock
    - /a/different/Gemfile.lock
}
```

##Reference

###Classes

####Public Classes
* appcanary: Main class, includes all other classes.

####Private Classes
* appcanary::prereq: Installs the packagecloud.io repository where Appcanary resides
* appcanary::install: Installs Appcanary
* appcanary::config: Configures Appcanary
* appcanary::service: Ensures Appcanary runs

###Parameters
The following parameters are available in the ::appcanary class:

####`api_key`
Specifies your API key. Get yours from https://appcanary.com/settings

####`paths`
Specifies the paths to your Gemfile.locks

##Limitations

Only tested on Ubuntu Trusty so far. Should work on any platform supported by the packagecloud.io module and by Appcanary itself.

##Development

Contributions are welcome anytime. Open issues or send pull requests.
