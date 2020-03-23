# install puppet-lint	

  exec { 'apt-get update':        # executes apt-get update
    command => '/usr/bin/apt-get update'
  }

  package { 'puppet-lint':  # install puppet-lint
    ensure  => 'installed',
    require => Exec['apt-get update']
  }
