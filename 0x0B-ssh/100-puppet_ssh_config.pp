#!/usr/bin/env bash
# use puppet to make chnages 

file { 'etc/ssh/ssh_config':
	ensure => present,
content =>"

	#ssh configuration
	host*
	IdentityFile ~/.ssh/school
	PasswordAuthentication no
	"
}
