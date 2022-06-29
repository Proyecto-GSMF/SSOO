# Ejemplo Ansible

- Crear 4 VM de Linux
- Loguearse a una (Ansible)
- Instalar Ansible (yum install -y ansible)
- Modificar en el inventario las IPs, usuario y pass de las VM
- Ejecutar: ansible-playbook -i inventario comun.yml y ansible-playbook -i inventario apache-php.yml 

# Activar SSH(CentOS7)
- yum install openssh
- systemctl status firewalld
- firewall-cmd --add-service=ssh --permanent
- firewall-cmd --reload
- firewall-cmd --list-all
- systemctl enable sshd.service
- systemctl start sshd.service

# Ansible install
- https://www.simplilearn.com/tutorials/ansible-tutorial/ansible-installation

# Docker compose install
- https://docs.docker.com/engine/install/centos/
