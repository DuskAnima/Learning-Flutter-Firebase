#### Arithmetic
(Operadores aritméticos) 
###### Simple Operators:
- ``+`` Add
- ``-`` Substract
- ``*`` Multiply
- ``/`` Divide 
	- Esta división siempre tendrá como resultado un double
- ``**`` Power
- ``~/`` Truncating Division 
	- División que no redondea, tendrá como resultado un int
- ``%`` Euclidean Modulo 
	- Retorna el resto de una división.
	- El resultado será double o int en función al tipo del dividendo (número de la izquierda).
	- El resultado **siempre será positivo**.
###### Compound Operators
- ``+=`` Addition Assignment 
		- Suma y asigna el valor a una variable por cada iteración
-  ``++`` Increment
	 -  Incrementa en 1 por cada iteración 
- ``-=`` Subtraction Assignment
	- Resta y asigna el valor a una variable por cada iteración
- ``--`` Decrement
	- Reduce en 1 por cada iteración	
- ``*=`` Multiplication Assignment
	- Multiplica y asigna el valor a una variable por cada iteración
- ``/=`` Division Assignment
		- Divide y asigna el valor a una variable por cada iteración
#### Comparison
(Operadores booleanos de comparación)
- ``==`` Equality Operator
	- retorna ``true`` en caso de igualdad, `false` en caso de diferencia.
	- Se puede utilizar para comprobar la igualdad de Strings.
- `!=` Not Operator
	- Invierte el resultado de las comparaciones.
		- Puede ser utilizado para invertir el valor de un resultado booleano encerrándolo entre paréntesis.
			- ``!(1 == 1 );`` = false
- ``>, <`` Greater and Less Than
	- Retorna `true` si la apertura está orientada al valor mayor, `false` si está orientada al menor.
- ``>=, <=`` Greater/Less or Equal Than
	- Retorna `true` si es "mayor o igual" o "menor o igual". De errar la comparación, retorna `false`.
- ``&&`` And Operator
	- Retorna `true` si dos condiciones establecidas retornan `true`. Si una o ambas fallan, retorna `false`.
- ``||`` Or Operator
	- Retorna `true` si, de dos condiciones, al menos una de las dos es `true`.
Cabe destacar que estos operadores pueden ser combinados entre sí para crear condiciones de verdad más complejas. Por ejemplo:
```
const andTrue = 1 < 2 && 4 > 3;
const andFalse = 1 < 2 && 3 > 4;
const orTrue = 1 < 2 || 3 > 4;
const orFalse = 1 == 2 || 3 == 4;
```
###### Operator Precedence
(Prioridad de operadores)
- Mientras más arriba esté el operador primero será evaluado. 
- Este proceso puede ser sesgado utilizando paréntesis para anidar la prioridad de las operaciones que queramos. 
	- En general, el uso de paréntesis hace más legible el código, haciendo que sea buena idea utilizarlos incluso si no es necesario.

| !         |
| --------- |
| >=,>,<,=< |
| == !=     |
| &&        |
| \|\|      |

#### Conceptos Clave
- Para tener mas formas de operar valores existe el package [Math](Packages#Math).
- Las condiciones booleanas son parte fundamental del [[Control Flow]].