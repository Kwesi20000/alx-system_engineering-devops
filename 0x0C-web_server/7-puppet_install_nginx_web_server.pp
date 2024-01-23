# This automates my work using puppet 

package { 'nginx':
    ensure  => installed,
}

file_line { 'install':
  ensure  => present,
  path    => '/etc/nginx/sites-enabled/default',
  line    => 'rewrite ^ https://github.com/Kwesi20000 permanent;',
  after   => 'listen 80 default_server;',
}

file { '/var/www/html/index.html':
  ensure  => present,
  content => 'Hello World!',
}

service { 'nginx':
    ensure  => running,
    require => Package['nginx'],
}
