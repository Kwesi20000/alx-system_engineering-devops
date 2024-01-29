# Installs an Nginx server with a Custom Header 'X-Served-By'

# Update the package list before installing Nginx
exec { 'update':
    provider => shell,        # Use the shell provider for command execution
    command  => 'sudo apt-get -y update',  # Update the package list
    before   => Exec['install Nginx'],  # Ensure 'install Nginx' is executed after updating
}

# Install Nginx
exec { 'install Nginx':
    provider => shell,        # Use the shell provider for command execution
    command  => 'sudo apt-get -y install nginx',  # Install Nginx
    before   => Exec['restart Nginx'],  # Ensure 'restart Nginx' is executed after installation
}

# Restart Nginx after installation
exec { 'restart Nginx':
    provider => shell,        # Use the shell provider for command execution
    command  => 'sudo service nginx restart'  # Restart Nginx service
}
