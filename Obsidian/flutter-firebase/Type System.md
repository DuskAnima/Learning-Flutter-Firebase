Dart tiene un **sistema de tipos avanzado**, diseñado para ofrecer **seguridad, flexibilidad y eficiencia** en el desarrollo de aplicaciones.
###### Type Safety 
(Seguridad de tipos)
* Es la capacidad que posee de un lenguaje (en este caso, Dart) para garantizar que que las operaciones se realicen solo con tipos compatibles para poder prevenir errores relacionados con el datatype.
	* El compilador detecta el error **antes de la ejecución**.
* [``dynamic``](Datatype.md#dynamic) es un datatype que salta esta característica, pero no se suele considerar una buena práctica.
	* A veces puede ser útil cuando se trabaja con datos JSON o APIs desconocidas.
	* "Friends don’t let friends use dynamic . Your life is too valuable for that."
###### Strong Typing 
(Tipado fuerte)
* No permite conversiones implícitas entre tipos incompatibles sin intervención del programador.
	* En el caso de Dart, se logra esto utilizando [[Type Conversion]]. 
###### Static Typing 
(Tipado estático)
- Las variables poseen un tipo fijo en tiempo de compilación. 
	- El tipo de variable se verifica antes de ejecutar el programa.
	- Esto evita errores en tiempo de ejecución.
	- permite [type inference](#Type%20Inference).
###### Type Inference 
(inferencia de tipos) 
* Cuando un [datatype](Datatype.md) no es explicitado, Dart asigna automáticamente el datatype ideal para el tipo de dato que se le está entregando.
* Esta propiedad sigue respetando las otras propiedades.
* Se aplica específicamente a los [[Variables]] var y final
###### Null Safety
(Manejo de tipos nulos y no nulos)
- Por defecto, todas las variables deben tener un valor no null.
- Si una variable puede ser null, debe declararse explícitamente con el operador ?. 
	- Ejemplo: ``String? apellido;``
