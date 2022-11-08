<div align="center">
	<br>
	<a>
		<img src="GSMF/header.svg" width="800" height="200" alt="Portada GSMF">
	</a>
	<br>
	<br>
	<br>
	Documento Integrador: 
	<br>
	
	<br>
</div>
<br>
<br>
[Documento Integrador](https://github.com/Proyecto-GSMF/Ansible/blob/main/GSMF/asd.png)


# Ejemplo Ansible

- Crear 4 VM de Linux
- Loguearse a una (Ansible)
- Instalar Ansible (yum install -y ansible)
- Modificar en el inventario las IPs, usuario y pass de las VM
- Ejecutar: ansible-playbook -i inventario comun.yml y ansible-playbook -i inventario apache-php.yml 

## Crear 4 VM de Linux
- Una para Ansible
- Una para MySQL
- Una para Docker

- Verificar la IP de las VMs con ip a
- Loguearse por SSH a la VM que vaya a usar Ansible
- En esa VM ejecutar yum install -y epel-release -y && ysum install ansible -y
- Clonar el repo a la VM
- Crear un inventario nuevo, tomando el de ejemplo como base, en un archivo llamado "inventario"
- Ejecutar:
- ansible-playbook -i inventario comun.yml
- ansible-playbook -i inventario apache-php.yml
- ansible-playbook -i inventario mariadb.yml
- ansible-playbook -i inventario docker

