#!/bin/bash
opc=0
function menuBase ()
{
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
    echo "Ejecutar Ansible: playbookCommon" 
    ansible-playbook -i inventory playbookCommon.yml ;;
  2)
    echo "Ejecutar Ansible: playbookServerApp" 
    ansible-playbook -i inventory playbookServerApp.yml ;;
  3)
    echo "Ejecutar Ansible: playbookServerBD" 
    ansible-playbook -i inventory playbookServerBD.yml ;;
  4)
    ./Scripts/menuLogs.sh ;;
  5)
    echo "Saliendo del script menuBase.sh ..."
    break;;
  *)
    echo "Opcion Incorrecta";;
  esac
done

