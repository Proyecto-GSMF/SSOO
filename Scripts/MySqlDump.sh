#!/bin/bash
opc=0 #para el menu
if [ -d ~/BackupBD ]; then
	echo "El directorio ~/BackupBD ya está creado"
else
	mkdir ~/BackupBD
	echo "El directorio ~/BackupBD fue creado"
fi

umask 177

export TAR_OPTIONS="--use-compress-program=pbzip2"
mysqldump -u brumdb -a | fecha=$(date +%y-%m-%d-%T) > tar -cvzf gsmfBd$fecha.tar.bz2 ~/BackupBD/
