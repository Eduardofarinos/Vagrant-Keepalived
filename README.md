# Vagrant-Keepalived
DASI

Creación de un sistema mínimo de servicio web con balanceo de carga haciendouso de máquinas virtuales utilizando VAGRANT, el servicio de balanceo que usaremos se llama Keepalived.

Descomprimimos el archivo y en la carpeta contenedora abrimos un terminal, para iniciar el servicio escribimos:
```
$vagrant up
```
Si queremos para una o varias máquinas virtuales:
```
$vagrant halt nombre_de_la_maquina
```
Para acceder a la terminal de estas máquinas virtuales:
```
$vagrant ssh nombre_de_la_maquina
```
Por último para eliminarlas:
```
$vagrant destroy
```
