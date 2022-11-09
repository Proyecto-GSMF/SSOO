#!/bin/bash
opc=0
function menuLogs ()
{
  echo -e "\n$(tput setaf 6)¿Que desea hacer?$(tput sgr 0)"
  echo "1 - Consultar Logs de Autenticacion"
  echo "2 - Consultar Logs de Booteo"
  echo "3 - Consultar Logs de Cron"
  echo "4 - Consultar Logs de MySQL"
  echo -e "$(tput setaf 3)5 - Volver a menu Base$(tput sgr 0)"
  echo -e "$(tput setaf 1)6 - Salir$(tput sgr 0)"
}

#Opcion 1
function logsAutenticacion(){
  echo -e "\n$(tput setaf 6)Logs de Autenticacion...$(tput sgr 0)" 
  less /var/log/auth.log ;;
}

#Opcion 2
function logsBooteo(){
  echo -e "\n$(tput setaf 6)Logs de Booteo...$(tput sgr 0)"
  less /var/log/boot.log ;;
}

#Opcion 3
function logsCron(){
  echo -e "\n$(tput setaf 6)Logs de Cron ...$(tput sgr 0)" 
  less /var/log/cron ;;
}

#Opcion 4
function logsMySQL(){
  echo -e "\n$(tput setaf 6)Logs de MySQL ...$(tput sgr 0)" 
  less /var/log/mysql.log ;;
}

while [$opc -le 6]
do
  menu
  read opc
  case $opc in
  1)
    logsAutenticacion;;
  2)
    logsBooteo;;
  3)
    logsCron;;
  4)
    logsMySQL;;
  5)
    ../menuPrincipal.sh ;;
  6)
    echo -e "\n$(tput setaf 1)Saliendo del script menuLogs.sh ...$(tput sgr 0)"
    break;;
  *)
    echo -e "\n$(tput setaf 1) Opcion Incorrecta $(tput sgr 0)";;
  esac
done
