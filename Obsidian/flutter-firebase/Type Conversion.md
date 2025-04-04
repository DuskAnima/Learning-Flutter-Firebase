>`variable.typeConverter();`

Las Conversiones implícitas son fuente de bugs y pérdida de rendimiento en lenguajes de programación con esta característica, es por esto que Dart no las permite. En Dart, para hacer un type conversion es necesario explicitarlo usando métodos de clase:

###### ``toInt()``
- Convierte un valor de ``double`` a ``int``. Los decimales se pierden en el proceso, no realiza redondeo.
	- 3.14.toInt(); => 3
###### ``toDouble()`` 
- Convierte un valor `ìnt` a `double`. Esto simplemente agrega un decimal ``.0``.
	- 3.toDouble; => 3.0
###### ``toString()`` 
- Convierte el valor de una variable a un `String`. Se usa comúnmente para representar valores de objetos como texto.
	- 123.toString(); => "123"
- También aplica a objetos DateTime.
###### ``toStringAsFixed()``
- Convierte un valor `double` a ``String``. El número de decimales se podrá limitar en función al argumento entregado al método.
	- 3.14159.toStringAsFixed(2); => 3.14
###### ``parse()``
- Convierte un `String` a un número. 
	- int.parse("123");    => 123
	- double.parse("3.14"); => 3.14
- ``tryParse()`` posee la misma función, pero si el valor no es válido para una conversión, devuelve ``null`` en vez de arrojar error.
- También aplica a objetos ``DateTime``. 

#### Información complementaria
Los type conversions son runtime methods, esto implica que no pueden declararse como ``const``, pero sí ``var`` o `final`.

#### Conceptos clave
- Los Type Conversion se pueden aplicar a [[Variables]].
- Los Type Conversion se utilizan para mutar los [[Datatype]].