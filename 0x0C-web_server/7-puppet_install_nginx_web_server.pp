# Configuring a nginx server.	

  # install nginx server
  package { 'nginx':
    ensure   => 'installed'
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

  # create custom_404.html
  file { '/usr/share/nginx/html/custom_404.html':
    ensure  => 'present',
    content => "Ceci n'est pas une page",
    require => Package['nginx']
  }

  # Error 404 configuration
  file_line { 'error404':
    ensure   => present,
    path     => '/etc/nginx/sites-available/default',
    after    => 'listen 80 default_server;',
    line     => 'error_page 404 /custom_404.html;\n \t location = /custom_404.html {\n \t\t root /usr/share/nginx/html;\n internal;\n}',
    multiple => true
  }

  # start server to apply changes
  service { 'nginx':
    ensure  => running,
    require => Package['nginx']
  }
