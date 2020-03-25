# Configuring a nginx server.	

  # executes apt-get update
  exec { 'apt-get update':
    command => '/usr/bin/apt-get update'
  }

  # install nginx server
  package { 'nginx':
    ensure   => 'installed'
  }

  # create index.html
  file { '/var/www/html/index.html':
    ensure  => 'present',
    content => 'Holberton School'
  }

# sudo ufw allow 'Nginx HTTP' ?

  # Redirection configuration
  file_line { 'title':
    ensure   => present,
    path     => '/etc/nginx/sites-available/default',
    after    => 'listen 80 default_server;',
    line     => 'rewrite ^/redirect_me https://www.youtube.com/watch?v=dQw4w9WgXcQ permanent;',
    multiple => true
  }

  # create custom_404.html
  file { '/usr/share/nginx/html/custom_404.html':
    ensure  => 'present',
    content => "Ceci n'est pas une page"
    require => Package['nginx']
  }

  # Error 404 configuration
  file_line { 'title':
    ensure   => present,
    path     => '/etc/nginx/sites-available/default',
    after    => 'listen 80 default_server;',
    line     => 'error_page 404 /custom_404.html;\n \t location = /custom_404.html {\n \t\t root /usr/share/nginx/html;\n internal;\n}',
    multiple => true
  }

  # start server to apply changes
  service { 'ngins':
    ensure  => running,
    require => Package['nginx']
  }
