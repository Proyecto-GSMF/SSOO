<div align="center">
	<br>
	<a>
		<img src="Proyecto-GSMF/Ansible/GSMF/header.svg" width="800" height="200" alt="Portada GSMF">
	</a>
	<br>
	<br>
	<br>
	Documento Integrador: 
	<br>
	https://github.com/Proyecto-GSMF/Ansible/blob/main/GSMF/asd.png
	<br>
</div>
<br>
<br>




# Ejemplo Ansible

- Crear 4 VM de Linux
- Loguearse a una (Ansible)
- Instalar Ansible (yum install -y ansible)
- Modificar en el inventario las IPs, usuario y pass de las VM
- Ejecutar: ansible-playbook -i inventario comun.yml y ansible-playbook -i inventario apache-php.yml 

# Crear 4 VM de Linux
- Una para Ansible
- Una para MySQL
- Una para Apache
- Una para Docker
- Verificar la IP de las VMs con ip a
- Loguearse por SSH a la VM que vaya a usar Ansible
- En esa VM ejecutar yum install -y epel-release -y && yum install ansible -y
- Clonar el repo a la VM
- Crear un inventario nuevo, tomando el de ejemplo como base, en un archivo llamado "inventario"
- Ejecutar:
- ansible-playbook -i inventario comun.yml
- ansible-playbook -i inventario apache-php.yml
- ansible-playbook -i inventario mariadb.yml
- ansible-playbook -i inventario docker

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
