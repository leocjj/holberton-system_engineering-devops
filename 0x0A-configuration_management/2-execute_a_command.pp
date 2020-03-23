# To kill 'killmenow' process

  exec { 'killmenow':
    command => '/usr/bin/pkill killmenow'
  }
