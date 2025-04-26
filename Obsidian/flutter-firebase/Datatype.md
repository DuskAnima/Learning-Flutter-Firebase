**Todos** los datatypes (tipos de datos) son objetos. Esto ocurre porque son una subclases de [Object](#Object). La excepción a esto son [Null](#Null) y [Never](#Never).

###### ``Object``
- Es la superclase base de todos los datatypes de Dart exceptuando ``Null``.
	- Define y hereda las siguientes operaciones esenciales:
		- ``==`` prueba de igualdad.
		- ``toString()`` autodescripción del objeto.
			- Si no se sobreescribe el método ``toString()``, Dart devuelve una representación predeterminada que incluye el tipo de objeto y su dirección de memoria.
			- En clases personalizadas, es común sobreescribir ``toString()`` para que retorne representaciones útiles y comprensibles del objeto.
				- Si se modifica, una buena práctica es determinarla al final de toda la lista de métodos para mejorar la legibilidad.
		- ``hashCode`` valor entero hash.
			- Es un valor único asociado a un objeto que se utiliza para operaciones como búsquedas en colecciones (por ejemplo, al agregar o buscar objetos en un `Set` o como claves en un `Map`).
- ``Object?`` indica que la variable puede ser cualquier objeto, incluso ``Null``
###### ``dynamic``
- Puede contener cualquier tipo de dato en tiempo de ejecución, volviéndolo el único datatype mutable.
	- Esto desactiva las verificaciones de tipo propias de [type safety](Type%20System.md#Type%20Safety), cosa que puede llevar a problemas durante la ejecución si no se maneja cuidadosamente, cosa que lo vuelve poco recomendable. 
	* A veces puede ser útil cuando se trabaja con datos JSON o APIs desconocidas.
	* "Friends don’t let friends use dynamic. Your life is too valuable for that."
###### ``int``
- Representa a los números enteros.
###### ``double``
- Representa a los números con punto flotante.
###### ``num``
- Es un tipo que engloba, como superclase, tanto a ``int`` como ``double``.
	- Es útil cuando se desea poder asignar ambos tipos a una variable.
###### ``String``
- Representa las cadenas de texto.
	- Sí, se escribe con mayúscula.
	- Dart usa valores UTF-16 para codificar los caracteres.
- **Concatenation**: En Dart se hace poniendo los strings uno junto al otro sin ningún operador.
	- Esto se llama "adjacent string concatenation"
- **Interpolation**: Para insertar una variable en un string solo requiere anteponer un **$**. 
	- Los valores que no son string se convierten a String.
	- Al usar llaves dentro de la interpolación es posible incrustar lógica, por ejemplo usar [[Type Conversion]]
		- ``final myStringFixed = 'this double only has 2 decimals ${periodicNumber.toStringAsFixed(2)}';``
			- Recordemos que el formateo es en **runtime**, por lo tanto no puede ser definido como ``const``.
- **Multi-Line String**: Debe estar entre 3 comillas, ya sean simples o dobles. Imprime elementos literales dentro del campo encerrado entre estas comillas.
- **Insertar Unicode**:
	- Si se sabe el Unicode, se puede insertar anteponiendo "\u"
		- **print('I \u2764 Dart\u0021');**
			- Para Unicode con valor hexagesimal mayor a ``ffff`` es necesario usar corchetes.
				- **print('I love \u{1F3AF}');** 
- Podemos ver la representación de los caracteres usando los siguientes atributos:
	- `.codeUnits`
		- Cada code unit es una representación en términos de UTF-16 y posee un valor de 16 bits. Si está dentro del **Basic Multilingual Plane** representa un carácter, si se sale (como los emojis) lo representa con dos valores.
			- Esta notación suele ser problemática con emojis. 
				- Esto debido a que los emojis están codificados en **surrogate pairs** (pares de códigos). Ejemplo: \[55356, 57263].
	- `.runes`
		- Cada rune representa una carácter Unicode completo, incluso si se sale del **Basic Multilingual Plane**.
		- Retorna una codificación más manejable con emojis. Ejemplo: (127919)
			- Igualmente puede ser problemática al momento de manejar emojis pegados con Zero Width Joiner.
	- `.characters`
		- con el **[package characters](Packages#Characters)** se le agrega funcionalidades extra a los Strings para tener soporte de **Grapheme Clusters**, volviéndolos más manejables.
	
###### ``Null``
- Representa el valor nulo, solo posee un valor, ``null``.
###### ``bool``
- Puede almacenar uno de dos valores: ``true`` y ``false``.
###### ``enum``
- Es un conjunto fijo de valores nombrados.
- Debe ser declarada afuera de main()
	- Esto es porque ``enum`` en sí es reconocido por Dart como una clase.
- Se utiliza para crear datatypes personalizados y limitados.
- Casos de uso comunes:
	- Estados finitos: `EstadoUsuario {activo, inactivo, suspendido}`
	- Opciones de configuración: `Tema {claro, oscuro, sistema}`
	- Categorías fijas: `TipoProducto {libro, electronico, ropa}`
	- Códigos de error: `ErrorAPI {noEncontrado, sinConexión, servidor}` 
- Sus valores son **compile-time constant**, por lo tanto deben estar definidas con antelación y no pueden mutar.
	- Sus propiedades **sí** pueden ser inicializadas con valores calculados en runtime.
- Su uso es ideal para trabajar con el statement ``switch`` para establecer las variables evaluadas.
- Se puede acceder a sus datos con el formato `Tipo.valor`.
- Propiedades útiles:
	- ``Tipo.valor.index``. para obtener el índice.
	- `Tipo.valor.name`. para obtener el nombre del valor.
	- si se hace un ``print`` a una variable con un valor de ``enum`` declarado, se imprimirá el valor.
- De manera mas avanzada, permiten agregar **propiedades**, **constructores** y **métodos**.
	- Todas las variables deben ser `final`.
	- Los constructores deben ser ``const``.
	- Puede implementar `mixin`.
	- Es como tener una mini clase especializada para manejar opciones predefinidas, solo que con ciertas limitaciones:
		- No puede ser instanciada con `new`.
		- No tiene herencia, no puede extenderse ni ser extendida con `extends`
		- Todas sus instancias son ``const``.
###### ``Never``
- Es un tipo especial que se utiliza para representar valores que nunca se alcanzan. 
###### ``DateTime``
- Permite representar tanto fechas como horas.
	- Posee funcionalidades para obtener fecha y hora, hacer comparaciones y manipular fechas y horas (sumar/restar días, horas, etc.).





#### Información complementaria
###### Type Checking en Runtime:
Si se usa la keyword ``is`` luego de instanciar una variable y luego se declara un datatype, se retornará `true` o `false` si es que el datatype de la variable se condice con el datatype declarado después del `is`. Ejemplo:
```
num myNumber = 3.14;
print(myNumber is int); : false
print(myNumber is double); : true
```
Si se usa la propiedad ``.runtimeType`` en una instancia de variable, retornará el datatype correspondiente.
###### Type Casting:
Debido a que todo es un Object, esto implica una jerarquía de métodos que se esparcen en arboles de clases, subclases y superclases, es por esto que es posible, usando la keyword ``as``, declarar si es que se busca operar con una subclase de una con la cual estemos operando para poder utilizar métodos propios de tales sub clases. Ejemplo:
```
num someNumber = 3;
print(someNumber.isEven); : Error, isEven es una propiedad de int, la cual no está definida en num
final someInt = someNumber as int; 
print(someNumber.isEven); : Ahora puede usarse la propiedad isEven.
```
Si se castea un datatype no compatible con el datatype establecido, se arrojará un error. En otras palabras, se puede castear a una subclase hija, no a una hermana. 
Esto ocurre porque se trabaja con la runtime type de la variable.

#### Conceptos Clave
-  Múltiples datatypes poseen métodos de [[Type Conversion]].