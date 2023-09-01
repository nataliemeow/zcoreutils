#!/usr/bin/zsh

function _read {
	while { sysread -i $1 -o 1 ; [[ $? != 5 ]] } {}
}

function cat {
	if [[ $# = 0 ]] {
		# direct fd 0 contents to fd 1, 8192 (default) bytes at a time, until
		# zero bytes are read (EOF) without system errors (status code 5)
		_read 0
		exit
	} else {
		for file ("$@") {
			# POSIX compatibility, ignore
			if [[ $file = -u ]] {
				continue
			}
			if [[ $file = - ]] {
				_read 0
				exit
			}
			sysopen -r -u 3 $file
			_read 3
			# close fd
			exec 3<&-
		}
	}
}
