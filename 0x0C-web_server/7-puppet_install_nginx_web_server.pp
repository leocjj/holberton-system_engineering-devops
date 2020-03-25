# Configuring a nginx server.	

  # install nginx server
  package { 'nginx':
    ensure   => 'installed'
    name   => 'nginx',
  }
  
  # create index.html
  file { '/var/www/html/index.html':
    path    => '/var/www/html/index.html',
    content => 'Holberton School'
  }

  # Redirection configuration
  file_line { 'redirection':
    ensure   => present,
    path     => '/etc/nginx/sites-available/default',
    after    => 'server_name _;',
    line     => 'rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;',
    multiple => true
  }

  # start server to apply changes
  service { 'nginx':
    ensure  => running,
    require => Package['nginx']
  }
