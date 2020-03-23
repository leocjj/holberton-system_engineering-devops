# To install puppet-lint	

  package { 'puppet-lint':  # install puppet-lint
    ensure   => '2.1.1',
    provider => 'gem'
  }
