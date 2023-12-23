
package { 'werkzeug':
  ensure   => '2.1.1',
  provider => 'pip3'
}

# Installs flask from pip3
package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3'
}
