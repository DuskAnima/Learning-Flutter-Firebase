
#### Objetos
- Un objeto es el valor que se crea en base a una clase.
	- Otro nombre para esto es **instancia**.
		- Entonces al proceso para crear una clase se le suele denominar **instanciar una clase**.
- Para instanciar una clase se debe llamar el nombre de la clase igual a como llamarías a una función. 
	- La notación es  `myObjectVariable = myObject() `
	- Cuando instancias una clase estás, de hecho, llamando a un tipo de función llamado **método constructor**.
#### Asignación de Valores
###### Dot Notation
> `objectVariable.property = value`
- A un objeto se le puede asignar valores al momento de instanciarlo al darle los valores como argumentos, igual que una función.
	- Luego de que un objeto está creado, es posible asignarle otros valores
		- Esto se logra con la notación de punto.
		- Es importante tener en cuenta que solo se pueden reasignar valores a un objeto solo si fueron declaradas como variables o como runtime constant, o sea declarada como **final**. 
			- No es posible modificar un objeto declarado con la keyword ``const``. 
###### Cascade Notation
- Se utiliza para poder encadenar multiples asignaciones de valor a las propiedades sin la necesidad de redundar en el nombre del objeto.
	- El **cascade operator** es `..`.
	- Cabe destacar que en la encadenación solo se pone `;` en el último valor asignado.
	- No es obligatorio, en general solo es útil cuando se requiere asignar muchos valores simultáneamente, esto hace que el código esté un poco más limpio.
```
final myObjectVariable = myObject()
	..name = 'Ray'
	..id = 42;
```
#### Methods
###### Object Serialization
- Los archivos, base de datos y networks solo saben manejar tipos de datos simples, como String o números, no tipos de datos más complejos. Para poder lidiar con este problema se utiliza la **serialización**. 
- La serialización es el proceso por el cual se convierte un objeto de datos complejos en formas almacenables y/o transmisibles. 
	- Luego, de ser necesario, la información transformada y/o devuelta puede ser fácilmente convertida nuevamente en un objeto como una especie de **deserialización**. 
- Existen métodos estandarizados para la serialización, facilitando el trabajo de manipular la información, esto debido a que la serialización es una práctica común. 
	- Uno de los formatos más comunes es **JSON** (JavaScript Object Notation).
		- Ejemplo simple:
			``String toJson() {``
				``return '{"id":$id,"name":"$name"}';`` 
				``}``
		- En **JSON**:
			- Los corchetes rodean objetos.
			- Comas separan propiedades.
			- Dos puntos separan nombres de las propiedades de los valores de las propiedades.
			- Comas dobles rodean strings.
		- Comúnmente en Dart, para serializar y deserializar JSONs se utiliza la librería [convert](Packages#Convert).


###### Object References
- Si una instancia ya creada es asignada a otra variable, esta otra variable referenciará al espacio en memoria de la instancia original, no se "clonará" el objeto. 
	- Esto implica que, si en la otra variable se cambia alguna propiedad, esto afectará a ambas variables porque ambas apuntan a la misma referencia.

#### Encapsulation
