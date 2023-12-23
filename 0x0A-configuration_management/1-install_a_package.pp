package { 'python3-pip':
  ensure => installed,
}

exec { 'install_werkzeug':
  command => '/usr/bin/pip3 install Werkzeug==2.1.1',
  require => Package['python3-pip'],
  unless  => '/usr/bin/pip3 show Werkzeug | grep -q "Version: 2.1.1"',
}

exec { 'install_flask':
  command => '/usr/bin/pip3 install flask==2.1.0',
  require => [Package['python3-pip'], Exec['install_werkzeug']],
  unless  => '/usr/bin/pip3 show flask | grep -q "Version: 2.1.0"',
}
