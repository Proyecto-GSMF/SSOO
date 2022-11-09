#!/bin/bash
opc=0
function menuPrincipal ()
{
  echo "¿Que desea hacer?"
  echo "1 - Ejecutar Ansible: playbookCommon"
  echo "2 - Ejecutar Ansible: playbookServerApp"
  echo "3 - Ejecutar Ansible: playbookServerBD"
  echo "4 - Menu Logs"
  echo "5 - Salir"
}

while [$opc -le 5]
do
  menu
  read opc
  case $opc in
  1)
    echo "Ejecutando Ansible: playbookCommon ..." 
    ansible-playbook -i inventory playbookCommon.yml ;;
  2)
    echo "Ejecutando Ansible: playbookServerApp ..." 
    ansible-playbook -i inventory playbookServerApp.yml ;;
  3)
    echo "Ejecutando Ansible: playbookServerBD ..." 
    ansible-playbook -i inventory playbookServerBD.yml ;;
  4)
    echo "Abriendo script menuLogs.sh ..."
    ./Scripts/menuLogs.sh ;;
  5)
    echo "Saliendo del script menuPrincipal.sh ..."
    break;;
  *)
    echo "Opcion Incorrecta";;
  esac
done

