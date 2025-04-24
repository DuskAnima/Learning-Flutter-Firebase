>`(variable qualifier) (datatype) (variable name) = (value);`

#### Variable Qualifier
Existen 3 modificadores de variables (variable qualifier), los cuales tienen sus usos específicos según la necesidad del código:
###### ``const``
* Se utiliza para declarar "**compile-time constant**".
* El valor de la constante **debe** ser declarado en tiempo de compilación, antes de que el programa se ejecute.	
* Esto le da libertad al compilador para hacer optimizaciones internas, como reemplazar las referencias a la constante directamente con su valor, lo que mejora el rendimiento.
* Modificador de valor inmutable.
* Si se utiliza para **instanciar una** [clase](Classes), tanto la referencia como el objeto se vuelven inmutables.
	* Esto implica que, luego de creado el objeto, sus valores **no pueden ser alterados**.
###### ``final``
 * Se utiliza para declarar "**runtime constant**":
*  El valor no se conoce durante el tiempo de compilado, se le es asignado durante la ejecución.
* Una vez asignado no puede ser modificado. De intentarse, esto generaría error.
* Si se utiliza para **instanciar una** [clase](Classes), la referencia es inmutable, pero el objeto sigue siendo mutable.
	* Esto implica que, luego de creado el objeto, sus valores **sí pueden ser alterados**.
###### ``var`` 
* Se utiliza para declarar variables.
* El valor puede conocerse previamente o se puede asignar después.
* Se puede modificar tantas veces como sean necesarias

#### Scope
(Alcance)
El Scope es el alcance que posee una variable en el [[Control Flow]].
- Se establece jerárquicamente en función al lugar en el que fue declarada la variable.
- En el caso de Dart, esta jerarquía se define en el nivel de anidamiento de las llaves.
	- Si una variable está declarada fuera de cualquier llave, se considera global.
	- Si una variable está declarada dentro de una llave, su alcance se limita al interior de esas mismas llaves.
		- Si se crea más profundidad de anidamiento, una variable declarada en el primer nivel tendrá alcance a los niveles mas profundos.
		- Por regla general, todas las variables tienen un alcance hacia adentro y jamás hacia afuera de los niveles de jerarquía. Una variable siempre puede tener alcance a jerarquías mas bajas, pero jamás a jerarquías mas altas.
#### Información complementaria

- **ES IMPORTANTE HACER NOMBRES DESCRIPTIVOS Y SIGNIFICATIVOS PARA LAS VARIABLES, SIN USAR LETRAS NI ABREVIACIONES**
	- Idealmente, hay que poder leer el código y comprender el significado de las cosas que ocurren a medida que lo lees, evitando tener que depender de la memoria. 
- Es recomendable declarar una variable lo más cercana al scope que vas a necesitar.
	- Hacer esto mejorará la legibilidad del código. 
	- Además, evitará que se usen o cambien en otros lugares sin querer. 

#### Conceptos clave:
 * Todas las variables operan bajo un mismo [[Type System]] 
 * Todas las variables poseen [[Datatype]]