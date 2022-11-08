#!/bin/bash
opc=0 #para el menu
if [ -d ~/BackupBD ]; then
	echo ""
else
	mkdir ~/BackupBD
fi

umask 177

export TAR_OPTIONS="--use-compress-program=pbzip2"
mysqldump -u brumdb -a | fecha=$(date +%y-%m-%d-%T) > tar -cvzf gsmfBd$fecha.tar.bz2 ~/BackupBD/
