# Actividad 3 - Systemd Unit

NOMBRE: Denis Augusto Coronado Calderón 


CARNET: 202101499


## Servicio para el  Saludo
El servicio creado imprime un saludo y la fecha actual infinitamente con una pausa de un segundo.



## Servicio

```bash

    [Unit]
    Description=Servicio para el 
    
    

    [Service]
    Type=simple
    ExecStart=saludo.sh    
    Restart=always
    RestartSec=1

    [Install]
    WantedBy=multi-user.target

```

## Script

```bash

    #!/bin/bash

    while true; do
        echo "!Saludos! Te informo que fecha y hora actual es: $(date)"
        sleep 1
    done


```


## Instalación

* Conceder los permisos al script 


```bash

        sudo chmod +x saludo.sh    
```


* Ya creado el script  se debe crear el archivo `saludar.service` en la ruta que se espefica: 


```bashd

        sudo nano /etc/systemd/system/saludar.service

```

* Creado el archivo en la unidad de `saludar.service` en systemd se debe habilitar el servicio para que el mismo inicie automaticamente con el sistema

```bashd

        sudo systemctl enable saludar.service

```

* Creado el archivo y habilitado se inicia el servicio con el siguiente comando. 

```bashd

        sudo systemctl start saludar.service

```

* Al iniciar el servicio se puede visualizar el estado del mismo con el comando 

```bashd

        sudo systemctl status saludar.service

```


* Si se desea visualizar los registros `logs` del servicio, se hace uso del comando:


```bashd

        journalctl -u saludar.service

```


