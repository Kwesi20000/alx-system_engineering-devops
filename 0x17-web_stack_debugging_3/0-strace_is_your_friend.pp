# Puppet manifest to fix Apache 500 error identified with strace

exec { 'fix':
    command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
    path    => '/usr/local/bin/:/bin/'
}
