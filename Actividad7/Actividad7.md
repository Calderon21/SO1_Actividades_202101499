### NOMBRE: Denis Augusto Coronado Calderón CARNE: 202101499 

## **Describir las características principales y el funcionamiento del Completely Fair Scheduler (CFS) de Linux.** 

####  El Completely Fair Scheduler (CFS) es el algoritmo de planificación de procesos predeterminado en el kernel de Linux a partir de la versión 2.6.23. Su diseño se centra en proporcionar una justa distribución del tiempo de CPU entre los procesos en ejecución.

1. **Asignación proporcional del tiempo de CPU:** En lugar de utilizar reglas estrictas basadas en la longitud de un quantum de tiempo, el CFS asigna una proporción del tiempo de CPU a cada tarea. Esta proporción se calcula en función del valor "nice" asignado a cada tarea. Los valores "nice" varían de -20 a +19, donde un valor numéricamente menor indica una prioridad relativa más alta. Por lo tanto, las tareas con valores "nice" más bajos reciben una proporción mayor de tiempo de CPU que las tareas con valores "nice" más altos.

2. **Latencia objetivo y tiempo de ejecución virtual:** El CFS no utiliza valores discretos de slices de tiempo y en su lugar identifica una latencia objetivo, que es un intervalo de tiempo durante el cual cada tarea ejecutable debe ejecutarse al menos una vez. El tiempo de CPU se asigna proporcionalmente al valor de la latencia objetivo. El CFS mantiene un tiempo de ejecución virtual (vruntime) para cada tarea, que se utiliza para determinar su prioridad. Este vruntime se ajusta con un factor de decaimiento basado en la prioridad de la tarea.

3. **Sin prioridades directas:** A diferencia de algunos otros algoritmos de planificación que asignan prioridades directamente, el CFS no asigna prioridades directamente a las tareas. En su lugar, registra cuánto tiempo ha corrido cada tarea y utiliza su vruntime para decidir qué tarea se ejecutará a continuación.

4. **Soporte para equilibrio de carga:** El CFS es consciente de la arquitectura NUMA (acceso no uniforme a la memoria) y minimiza la migración de hilos para evitar penalizaciones en el acceso a la memoria. Equilibra la carga entre los núcleos de procesamiento y entre los diferentes niveles de la jerarquía de planificación, comenzando desde el nivel más bajo.

4. **Soporte para planificación en tiempo real:** Además de la planificación por lotes, el CFS también implementa planificación en tiempo real según el estándar POSIX, utilizando dos rangos de prioridad separados para tareas en tiempo real y tareas normales.