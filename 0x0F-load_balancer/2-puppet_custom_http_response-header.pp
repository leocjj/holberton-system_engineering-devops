# install and configure an ubuntu servr 16.04 using puppet

exec { 'update':
  command => '/usr/bin/apt-get -y update',
}

package { 'nginx':
  ensure  => installed,
  require => Exec['update']
}

file { '/var/www/html/index.html':
  content => 'Holberton School for the win!',
  path    => '/var/www/html/index.html',
  require => Package['nginx']
}

file_line { 'title':
  ensure   => present,
  path     => '/etc/nginx/sites-available/default',
  after    => 'server_name _;',
  line     => 'rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;',
  require => Package['nginx']
}

file_line { 'header':
  ensure => 'present',
  path   => '/etc/nginx/sites-available/default',
  after  => 'server_name _;',
  line   => 'add_header X-Served-By "$HOSTNAME";',
  require => Package['nginx']
}

service { 'nginx':
  ensure  => running,
  require => Package['nginx']
}
