###### ``If`` Statement
(Declaración if)
>`if(<boolean condition>) {
>	`//code`
>`}`
- Si el valor de la condición booleana es `true`, el bloque de código entre las llaves se ejecutará
- Si el valor de la condición booleana es `false`, el bloque no se ejecutará.
###### ``Else`` Clause
(Clausula else)
>`if(<boolean false>) {`
>	`//code`
>`} else {`
>	`//code
>`}`
- Es una extensión de una condición booleana.
- Si un flujo da por resultado `false` se ejecuta la clausula `else`.
###### ``Else If`` Chains
(Cadena de else if)
>`if(<boolean false>) {`
>	`//code`
>`} else if (<boolean condition>) {`
>	`//code`
>`}`
- Es una extensión de una condición booleana.
- Si un flujo da por resultado un `false` es posible encadenar una segunda condición que se ejecute.
	- **Esta condición solo se ejecuta sí y solo sí la anterior es falsa**
- Es posible anidar múltiples ``else if`` uno tras otro.
	- los `else if` anidados, de ser ``false``, seguirán luyendo al siguiente hasta que llegue a uno que tenga una condicional con valor `true` o llegue finalmente a una clausula `else`.
###### Ternary Conditional Operator
(Operador condicional ternario)
>`(<condition>) ? <valueIfTrue> : <valueIfFalse>;`
- Es una expresión condicional compacta.
	- La finalidad de esto es mejorar la legibilidad del código.
- Permite evaluar una condición que retorna un valor en función de si la condición es `true` o `false` sin la necesidad de usar if else.
###### ``Switch`` Statement
(Declaración Switch)
`switch (variable) {`
	`case <value 1>:`
		`//code`
		`break;`
	`case <value 2>:`
		`//code`
		`break;`
		``. . . ``
	`default:`
		`//code`
`}`

- ``switch`` se basa en el establecimiento de casos de uso.
	- Se declara una variable y, según los diferentes casos establecidos, se ejecutará el bloque de código que posea un caso compatible con la variable declarada.
- las partes de un `switch` statement son las siguientes:
	- **`switch`** pide una variable `int`, `string` o `enum` o un una compile-time constant.
	- **`case`** cada keyword `case` toma un valor compile-time constant y compara ese valor usando el operador ``==`` con la variable declarada previamente en `switch`.
	- **`break`** esta keyword le dice a Dart que finalice el programa porque el bloque de código ha terminado.
	- **`default`** si ninguno de los `case` se iguala con la variable de `switch`, el código bajo `default` se ejecuta.
- Desde Dart 3 a este statement se le ha agregado un montón de profundidad.
	- Puede ser buena idea estudiarlo más a profundidad en el futuro.
	- El libro también recomienda buscar **refactoring switch statements with polymorphism** para evitar el sobre uso de esto mismo.