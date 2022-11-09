#!/bin/bash
opc=0

function menuPrincipal ()
{
  echo -e "\n$(tput setaf 6)¿Que desea hacer?$(tput sgr 0)"
  echo "1 - Ejecutar Ansible: playbookCommon"
  echo "2 - Ejecutar Ansible: playbookServerApp"
  echo "3 - Ejecutar Ansible: playbookServerBD"
  echo -e "$(tput setaf 3)4 - Ir a Menu Logs$(tput sgr 0)"
  echo -e "$(tput setaf 1)5 - Salir$(tput sgr 0)"
}

#Opcion 1
function playbookCommon(){
  echo -e "\n$(tput setaf 6)Ejecutando Ansible: playbookCommon ...$(tput sgr 0)" 
  ansible-playbook -i inventory playbookCommon.yml ;;
}

#Opcion 2
function playbookServerApp(){
  echo -e "\n$(tput setaf 6)Ejecutando Ansible: playbookServerApp ...$(tput sgr 0)" 
  ansible-playbook -i inventory playbookServerApp.yml ;;
}

#Opcion 3
function playbookServerBD(){
  echo -e "\n$(tput setaf 6)Ejecutando Ansible: playbookBD ...$(tput sgr 0)" 
  ansible-playbook -i inventory playbookServerBD.yml ;;
}


while [$opc -le 5]
do
  menu
  read opc
  case $opc in
  1)
    playbookCommon ;;
  2)
    playbookServerApp ;;
  3)
    playbookServerBD ;;
  4)
    ./Scripts/menuLogs.sh ;;
  5)
    echo -e "\n$(tput setaf 1)Saliendo del script menuPrincipal.sh ...$(tput sgr 0)"
    break;;
  *)
    echo -e "\n$(tput setaf 1) Opcion Incorrecta $(tput sgr 0)";;
  esac
done

