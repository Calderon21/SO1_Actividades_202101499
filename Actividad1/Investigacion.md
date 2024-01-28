# Tipos de Kernel y sus diferencias 

#### El kernel es la parte central y escencial del sistema que controla los recursos del hardware y proporciona servicios que sean requeridos por los progrmas y aplicaciones, entre los distintos tipos de kernels y sus diferencias se relacionan con la forma en que este maneja las tareas que se le atribuyen y la interaccion del hardware, entre los principales tipos de kernels encontramos el 

- Monolitico 

    - Todas las funciones del kernel se ejecutan en un solo espacio de direcciones.

    - Todas las partes del kernel pueden acceder directamente a las estructuras de datos y funciones del kernel.

    - Un solo archivo binario contiene todo el núcleo y los controladores.
- Microkernel
    - Solo contiene las funciones esenciales del núcleo.

    - La mayoría de los servicios del sistema se ejecutan como procesos independientes fuera del núcleo.

    - La comunicación entre componentes se realiza mediante mensajes.  


- Hibrido 
    - Combina características de los kernels monolíticos y microkernels.

    - Algunas partes esenciales del sistema operativo se ejecutan en modo kernel, mientras que otras se ejecutan como procesos de usuario.

# User vs Kernel Mode

#### Son los modos existentes en los que un procesador puede operar, y estos modos estan relacionados con el nivel de privilegios y los recursos relacionados al acceso de los sistemas operativos 

- User Mode 
    - Acceso limitado a los recursos del sistema.

    - No puede acceder directamente al hardware ni realizar operaciones críticas.

- Kernel Mode
    - Acceso completo a todos los recursos del sistema y al hardware.

    - Puede ejecutar y acceder a direcciones de memoria especiales.

# Interruptions vs traps

#### Ambos son mecanismos utilizados en sistemas operativos y arquitectura de computadoras, son de gran utilidad en el manejo de de eventos y el control del flujo de ejecucion de software, ambos invulucran la transferencia de control de un codigo  especico en respuesta a distintos eventos si tienen diferencias claves entre ambos. 

- Interruptions
    - Las interrupciones son eventos externos generados por hardware o dispositivos periféricos.

    - Las interrupciones requieren un manejo inmediato por parte del sistema operativo.

    - Las interrupciones pueden cambiar el nivel de privilegios (modo usuario a modo kernel) para permitir que el sistema operativo maneje el evento.

- Traps
    - Las trampas son eventos generados internamente por el propio programa en ejecución.

    - Las trampas se utilizan para manejar condiciones excepcionales dentro de un programa sin requerir la intervención del sistema operativo.

    - Las trampas generalmente no cambian el nivel de privilegios y no implican una transición entre modos (usuario/kernel).


