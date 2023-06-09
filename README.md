#Iniciar proyecto
##Para iniciar el proyecto se necesita:
##dependencias:
#####Docker desktop [enlace](https://www.docker.com/products/docker-desktop/) 
#####wsl2 [enlace](https://learn.microsoft.com/en-us/windows/wsl/install-manual#:~:text=WSL2%20Linux%20kernel%20update%20package%20for%20x64%20machines) 
##Requisitos:
* tener habilitado la virtualizacion de su maquina 
* dentro de la carpeta del proyecto se debe ejecutar docker-compose up

##Metodos disponibles:

metodos disponibles son:

<b>GET</b>: http://localhost:3000/user  Obtener todos los usuarios

<b>GET</b>:  http://localhost:3000/user/{:id}  Obtener el usuario del id 

<b>POST</b>:  http://localhost:3000/user Añadir usuario 

necesita el siguiente esquema de datos para enviar un usuario
```javascript
{   
    "name": "nombre", 
    "email": "nombre@nombre.lc", 
    "password":"1234abcd"
}
```
<b>PUT</b>: http://localhost:3000/user/{:id} Editar usuario 
necesita el siguiente esquema de datos para editar un usuario
```javascript
{   
    "name": "nombre", 
    "email": "nombre@nombre.lc", 
    "password":"1234abcd"
}
```
<b>DELETE</b>: http://localhost:3000/user/{:id} Eliminar usuario 

