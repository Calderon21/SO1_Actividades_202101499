# Chat Basico con Named Pipes
### DATOS:

 NOMBRE: Denis Augusto Coronado Calderon    CARNE: 202101499

### Scripts

Para llevar a cabo una conversación básica con la participación de dos personas, es necesario desarrollar dos scripts, uno para cada participante. Estos scripts deben incluir la capacidad de leer el mensaje del usuario, enviarlo al otro participante, esperar la respuesta y, finalmente, mostrar esa respuesta en el chat del primer participante. Todo este proceso se debe realizar mediante un ciclo, con el objetivo de facilitar múltiples interacciones.

### Ejecucion

Para que nuestro chat funcione se debe dar los permisos de ejecucion a los script con `chmod +x`.

Crear los named pipes con el propósito de establecer las vías de comunicación entre los dos participantes, empleamos el comando  `mkfifo`.

Y por ultimo se ejecutan los scripts en dos terminales separadas
