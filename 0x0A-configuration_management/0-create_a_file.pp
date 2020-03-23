# create a file in /tmp.	

  $doc_root = '/tmp/holberton'

  # create file in doc_root directory
  file { $doc_root:
    ensure  => 'present',
    owner   => 'www-data',
    group   => 'www-data',
    mode    => '0744',
    content => 'I love Puppet'
  }
