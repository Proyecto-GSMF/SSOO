#!/bin/bash
opc=0
function menuBase ()
{
  echo "1 - Ejecutar Ansible: playbookCommon"
  echo "2 - Ejecutar Ansible: playbookServerApp"
  echo "3 - Ejecutar Ansible: playbookServerBD"
  echo "4 - Logs"
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
    ./Scritps/menuLogs.sh ;;
  5)
    echo "Salir"; 
    break;;
  *)
    echo "Opcion Incorrecta";;
  esac
done
~
~

