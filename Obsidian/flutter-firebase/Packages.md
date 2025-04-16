``pubspect.yaml: <package name>: <version>``
``import '<library name>';``
**Pub** es el nombre del package manager (gestor de paquetes) de Dart 
#### Como importar
- pubspect.yaml es el nombre del directorio del proyecto Dart que contiene la lista de dependencias. 
- Los paquetes y sus respectivas versiones se deben declarar bajo la línea de `dependencies:`.
	- usar el carácter `^` justo antes de la versión establece que cualquier dependencia igual o superior a ``x.y.z`` versión es útil, pero limitando todas las versiones a una variante de ``x``.   
		- ejemplo: ``^1.2.1`` establecerá que cualquier version igual o superior a la dicha es correcta, pero la limitará por debajo de ``2.0.0``
		- Esto es llamado **semantic versioning**.
- Al oprimir Ctrl + S guardará el proyecto, haciendo un **fetch** automáticamente. 
	- Esto es equivalente a, en la consola, escribir `dart pub get`.
- Finalmente, el proyecto debe importarse con la sintaxis correcta al comienzo del archivo. 


#### Math
(matemática)
Proporciona operaciones extras para valores [num](Datatype#num) y sus derivados.
```
import 'darth:math';
```
- Math functions
	- sin() 
		- seno
	- cos() 
		- coseno
	- sqrt() 
		- raíz cuadrada
	- max(x, y) 
		- valor mayor entre 2 números
	- min(x, y) 
		- valor menor entre 2 números
	- pow(base, exponente)
		- potencias. 
- Constants
	- pi
- Expressions
	- degrees to radians
		- cos(135 * pi / 180)
			- Convertir 135° a radianes
		- sin(45 * pi / 180)
			- Convertir 45° a radianes
#### Characters
(caracteres)
```
pubspec.yaml > characters: ^1.2.1

import 'package:characters/characters.dart';
```
Esta librería agrega funcionalidad extra a los [Strings](Datatype#String) y da a Dart soporte para Unicode Extended Grapheme Cluster, es decir, es capaz de reconocer emojis como un solo carácter en vez de un compendio de caracteres.
- ``myString.characters``
	- Retorna el Grapheme Cluster
	- ``myEmojiString.characters.length``
		- Retorna la cantidad exacta de emojis. 
	- "Es recomendable usar Grapheme Clusters cuando se reciba información desde el exterior." - Dart Apprentice Fundamentals.


