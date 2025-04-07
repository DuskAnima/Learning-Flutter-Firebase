En Dart **todo** es un objeto, incluso los Primitive Datatypes, lo que significa que pueden ser tratados como tal.
#### [[Type System]]:
* [Type Safety](Type%20System.md#Type%20Safety):
	* Evita que los datatypes sean modificados.
* [Strong Typing](Type%20System.md#Strong%20Typing)
	* No permite conversiones de tipo implícitas.
* [Static Typing](Type%20System.md#Static%20Typing)
	* Las variables tienen un tipo fijo en tiempo de compilación.
* [Type Inference](Type%20System.md#Type%20inference): 
	* Dart asigna automáticamente el datatype.
* [Null Safety](Type%20System.md#Null%20Safety)
	* Posee manejo de variables que admiten null.
#### [[Datatype]]:
- [Object](Datatype#Object)
	- Super clase base de los demás tipos de datos.
- [dynamic](Datatype.md#dynamic)
	- Tipo de dato mutable, poco recomendado.
- [int](Datatype#int)
	- enteros.
- [double](Datatype#double)
	- Decimales
- [num](Datatype#num)
	- Superclase de int y double
- [String](Datatype#String)
	- Cadenas de texto
- [Null](Datatype#Null)
	- Valor null
- [bool](Datatype#bool)
	- Valor true o false
- [Never](Datatype#Never)
	- Valor inalcanzable
- [DateTime](Datatype#DateTime)
	- Fechas y horas.
- [Información complementaria](Datatype#Información%20Complementaria) 
	- Type Checking en Runtime:
		- Checkeo booleano de Datatypes
	- Type Casting:
		- Uso de métodos heredados en clases compatibles.
#### [[Type Conversion]]:
- [toInt()](Type%20Conversion#toInt())
	- double a int.
- [toDouble()](Type%20Conversion#toDouble())
	- int a double.
- [toString](Type%20Conversion#toString)
	- valor a String.
- [toStringAsFixed()](Type%20Conversion#toStringAsFixed())
	- decimales específicos a String.
- [parse()](Type%20Conversion#parse())
	- String a números. 
- [Información complementaria](Type%20Conversion#Información%20complementaria)
	- Los type conversions son runtime methods.
#### [[Variables]]:
- [Variable Qualifier](Variables#Variable%20Qualifier)
	* [``const``](Modificadores de variables#const):
		* Su valor debe ser asignado previamente, no puede ser alterado.
	* [``final``](Variables.md#final):
		* Su valor es asignado durante la ejecución, tras esto no puede ser alterado.
	 * [``var``](Variables.md#var):
		* Su valor, tras ser asignado, puede ser modificado todas las veces necesarias.
* [Scope](Variables#Scope)
	* Alcance de las variables.
* [Información complementaria](Variables#Información%20complementaria)
	* Para nombrar variables es ideal hacer nombres descriptivos.
	* Es mejor declarar variables cerca de donde se utilizarán.

#### [[Operators]]:
- [Arithmetic Operators](Operators#Arithmetic)
	- [Simple Operators](Operators#Simple%20Operators)
		- Operadores matemáticos estándar.
	- [Compound Operators](Operators#Compound%20Operators)
		- Operadores especiales para casos iterables.
- [Comparison Operators](Operators#Comparison)
	- Operadores de comparación con retorno booleano.
	- [Operator Precedence](Operators#Operator%20Precedence)
		- Prioridad de lectura de operadores de comparación.
#### [[Control Flow]]:
- [if Statement](Control%20Flow#If%20Statement) 
	- Condicional.
- [else Clause](Control%20Flow#Else%20Clause)
	- Resultado si todas las condicionales son `false`.
- [else if Chains](Control%20Flow#Else%20If%20Chains)
	- Encadenamiento de condicionales 
- [Ternary Conditional Operator](Control%20Flow#Ternary%20Conditional%20Operator)
	- Expresión compacta de if else.
#### [[Packages]]:
- [Math](Packages#Math):
	- Funciones matemáticas, constantes, etc.
- [Characters](Packages#Characters)
	- Extiende las funcionalidades de los Strings
		- Soporte para **Unicode extended grapheme cluster**.
		- Atributos
			- ``.characters``



