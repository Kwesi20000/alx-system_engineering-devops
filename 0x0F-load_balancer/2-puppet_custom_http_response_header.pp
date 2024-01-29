# Installs an Nginx server with a Custom Header 'X-Served-By'

# Update the package list before installing Nginx
exec { 'update':
    provider => shell,
    command  => 'sudo apt-get -y update',
    before   => Exec['install Nginx'],
}

# Install Nginx
exec { 'install Nginx':
    provider => shell,
    command  => 'sudo apt-get -y install nginx',
    before   => Exec['restart Nginx'],
}

# Restart Nginx after installation
exec { 'restart Nginx':
    provider => shell'
    command  => 'sudo service nginx restart'
}
