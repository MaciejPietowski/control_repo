class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDK55qFTnTnuJ9cMfahCa8xEWEU4sVqShDJIZovn/Ir/M1z2wmp3CMBPoI8AIEVltYaZQUlDD//oh5FQtS6S4xPEtymicAUpqYMo/8ZyjeO/jzFcTn3Z/jz5UY0iqH+CCwcpYEvVCWHYLUZLg2uO7gKgn21BCTJ8PbC2z9O+FgO3d91gv1T4Xeq05N31Gc1D59+Onhn7fgo/h3gTRLR1OGB5hT4jzQ+w9eCnS9RFXEQM1w7LJVujenvtMcEb9kHf0Dut50Zfkp1nsGC+hFFYTZF6MrLIkAp3wE5bevrl804LjxNtoSp6Vl2kPhKnY+650EQyN/9o434Sb6+numFDJLh',
	}  
}
