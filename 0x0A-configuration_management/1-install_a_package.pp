# Puppet manifest for installing Flask version 2.1.0

package { 'python3-pip':
  ensure => 'installed',
}

exec { 'install_flask':
  command => '/usr/bin/pip3 install flask==2.1.0',
  path    => '/usr/local/bin:/usr/bin',
  creates => '/usr/local/lib/python3.8/dist-packages/Flask-2.1.0.dist-info',
}
