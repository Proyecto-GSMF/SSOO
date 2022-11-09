#!/bin/bash
opc=0
function menuLogs ()
{
  echo "¿Que desea hacer?"
  echo "1 - Consultar Logs de Autenticacion"
  echo "2 - Consultar Logs de Booteo"
  echo "3 - Consultar Logs de Cron"
  echo "4 - Consultar Logs de MySQL"
  echo "5 - Volver a menu Base"
  echo "6 - Salir"
}

while [$opc -le 6]
do
  menu
  read opc
  case $opc in
  1)
    echo "Logs de Autenticacion..." 
    less /var/log/auth.log ;;
  2)
    echo "Logs de Booteo..."
    less /var/log/boot.log ;;
  3)
    echo "Logs de Cron ..." 
    less /var/log/cron ;;
  4)
    echo "Abriendo script menuLogs.sh ..."
    ./Scripts/menuLogs.sh ;;
  5)
    echo "Volviendo a Menu Principal ..."
    ../menuPrincipal.sh ;;
  6)
    echo "Saliendo del script menuLogs.sh ..."
    break;;
  *)
    echo "Opcion Incorrecta";;
  esac
done
