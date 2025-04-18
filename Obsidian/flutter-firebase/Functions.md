Las funciones son bloques de código que poseen un input y un output. Su principal función es encerrar código para poder reutilizarlo en diferentes partes sin la necesidad de reescribirlo reiteradamente.

#### Partes de una función:
###### Return type
(Tipo de retorno)
- Se declara al comienzo, esto establece que [[Datatype]] tendrá el output de la función.
	- Si la función no está pensada para que retorne nada, la función debe ser declarada con void.
- El return type es opcional pero recomendado. Si no se incluye, Dart puede inferir desde el return declarado qué tipo de dato es. 
###### Function name 
(Nombre de la función)
- Puedes llamar las funciones casi como quieras.
	- Lo ideal es seguir la convención **camelCase**.
	- Evitar nombres de built-in functions o palabras reservadas. 
###### Parameter
(Parámetro)
- Son los inputs de una función. 
- Van en el interior de una función
	- Pueden ser uno, múltiples o ningún parámetro. 
	- se separan por comas. 
- Por cada parámetro se escribe primero el datatype, seguido del nombre.
	- Los parámetros deben ser escritos en **camelCase**.
- Los **parámetros posicionales** son aquellos en los que se deben proveer los argumentos en el orden en el que fueron declarados los parámetros.
	- Hacerlo en otro orden dará como resultado un resultado no deseado
- Los parámetros pueden ser **opcionales**.
	- Para hacer esto, al definir un parámetro, es necesario hacerlo entre corchetes y con un signo de interrogación después del datatype.
		- ``String myFunc(String myParameter, [String? myOptionalParameter])``
		- recordar que "``datatype?``" al tener un ? hace que el tipo sea nulleable, o sea que admite null. 
	- Es importante dejar los parámetros nulleables al final debido a la propiedad posicional de los argumentos. 
- Declarar el datatype de un parámetro es opcional, pero se recomienda declararlo. Dart asumirá que el parámetro tiene datatype ``dynamic``.
###### Return value
(Valor del retorno)
- Este es el output de la función
- Debería ser el mismo que el [Return type](#Return%20Type).
- Se debe declarar con la keyword **return**
	- Si el [Return type](#Return%20Type) es void, entonces no retorna nada.
###### Function signature
(Firma de función)
- El Return Type, Function Name y Parameters son conocidos colectivamente como **Function signature**
###### Function body
- Es el código declarado dentro de las llaves de la función
###### Function level
(nivel de función)
- Dart soporta **Top-level functions**.
	- Son funciones que pueden ser declaradas afuera de cualquier otra función o clase.
- También soporta funciones anidadas dentro de otras funciones.
- Cuando están anidadas dentro de otro método las funciones se llaman **métodos**.
#### Calling
(Llamada)
- Una función se llama escribiendo su nombre y proveyendo el **argumento** entre paréntesis
	- `myFunction(argument)`
- Es común confundir un parámetro y un argumento.
	- Parámetro es la definición (datatype y nombre) del input requerido.
	- Argumento es el valor entregado en cuestión a una función. 
	- Un parámetro es abstracto, un argumento es concreto.

#### Default Values
(Valores por defecto)
- Dart da la posibilidad de establecer los valores por defecto de una función.
	- Esto se hace usando el operador de asignación `=`.
		- `bool myFunc(int value, [int myDefaultValue = 0])`
#### Named Parameters
(Parámetros nombrados)
- Dart permite establecer parámetros que solo puedan recibir un argumento si se declara el nombre del parámetro.
	- Para hacer esto es necesario escribir el parámetro entre llaves ``{}``
		- `bool myFunc(int value, {int myNamedValue = 0})`
		- los valores nombrados también pueden ser null.
		- los valores nombrados deben tener un valor por defecto.
- Para dar un argumento a una función con parámetros nombrados es importante declarar el nombre, luego `:` y luego el valor.
	- ``myFunc(9, myNamedValue: 10)``
- Otro beneficio es que puedes establecer los parámetros nombrados en cualquier orden, incluso antes o después de los parámetros posicionales.
- Los parámetros nombrados son, por defecto, opcionales
	- Para poder hacer que sean obligatorios se debe anteponer la keyword `required` a la declaración del parámetro, antes de su datatype.
		- `bool myFunc({required int myRequiredNamedValue, int myOptionalNamedValue = 0})`
	- Los ``required`` no pueden poseer valor por defecto.

#### Side Effects
(Efectos secundarios)
- Se denomina efecto secundario a cualquier función que posea efectos diferentes del establecido en el ``return`` en base a las operaciones creadas con los inputs.
	- Es normal y a veces necesario que ciertas funciones posean efectos secundarios, pero por regla general, las funciones que no las tienen son más sencillas de manejar al ser más predecibles.
		- Estas funciones se llaman **pure functions** (funciones puras).
	- `` var myPreciousData = 5782; 
	``String anInnocentLookingFunction(String name) {`` 
	``myPreciousData = -1; 
	``return 'Hello, $name. Heh, heh, heh.'; }``
	- A menos que uno se tome el tiempo de estudiar esta función, no es posible notar los side effects que tiene.
		- Esto es un recordatorio de la necesidad de tener cuidado con los side effects y con la declaración de variables globales como `myPreciusData`. Nunca sabes que podría cambiarla.
- Lo ideal es maximizar el uso de pure functions y minimizar el uso de functions con side effects.
#### main()
- Es una función que todos los programas con Dart poseen
- Debido a que no fue pensado para retornar un valor, su datatype es void.
- Puede recibir parámetros, aunque usualmente no lo hace.

#### Nombrando Funciones
- Los nombres de las funciones son importantes porque aportan a la legibilidad del código.
- Recomendaciones para nombrar funciones
	- Para las **funciones puras**, sin side effects se recomienda usar frases con **sustantivos**.
		- Ejemplo: ``averageTemperature()`` en vez de `getAverageTemperature()`. `studentNames()` en vez de `getStudentNames()`.
	- Para las funciones con **side effects**, es decir, funciones que a parte de retornar algo, generan otras alteraciones en el código, se recomienda usar frases con **verbos**.
		- Ejemplo: `updateDatabase()`, `printHello()`.
	- También se pueden usar frases con verbos para enfatizar que la función hace mucho trabajo.
		- Por ejemplo `calculateFibonacci` o `parseJson`.
- No es buena práctica repetir palabras en la función y en la declaración de sus parámetros.
	- Por ejemplo en vez de `cubeNumber(int number)`, mejor `cube(int number)`.

#### Arrow Functions
(Funciones de flecha)
- Es una sintaxis especial que permite expresar una función en una sola línea
	- Esto sirve para proveer de legibilidad al código.
	- Ejemplo `int add(int a, int b) => a + b;`
- A esta forma de escribir funciones se le conoce como Arrow Syntax o Arrow Notation.
- Esto **solo** se puede hacer si el cuerpo de la función posee una línea.
