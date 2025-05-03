
#### Objects
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
Los métodos son funciones pero creadas dentro de un objeto, las cuales se operan con los argumentos entregados a la misma instancia de clase.
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
La encapsulación es el principio de esconder información y lógica interna dentro de una clase. Esta información se vuelve privada para cualquier elemento fuera de la librería. En otras palabras, si se intenta acceder a la información **fuera del archivo en el que fue definido el elemento** este dará error. Cabe destacar que se puede seguir accediendo a él dentro del archivo con plena normalidad.
- Ventajas de la encapsulación:
	- La clase controla la información, incluyendo quien puede verla y como se modifica.
	- El control aislado implica que es más sencillo de manipular y razonar.
	- Información oculta implica mejor privacidad.
	- Evita que otras clases no relacionadas alcancen y modifiquen los datos, cosa que puede generar bugs difíciles de encontrar.
	- Siempre puedes cambiar variables internas, nombres y lógica sin romper cosas en el exterior de la clase.
- Esconder componentes internos:
	- Para hacer variables privadas se debe anteponer un guion bajo.
		- `final _myVar = 1`
		- Al ser privado, se vuelve inaccesible, para poder usar el elemento afuera de una clase se deben agregar **getters**
###### Getters
- Un getter es un método especial que retorna un campo privado.
	- Es tan simple como hacer una función que retorne la información requerida.
	- Como convención usual, los getters suelen usar el prefijo get, pero Dart posee una **keyword** especial para esta situación. 
		- `String get myVar => _myVar;`
		- Este método tiene la facilidad de que para extraer el dato correspondiente solo es necesario invocar el nombre del atributo. 
			- `final myGetter = myInstance.myVar;`
			- Esto hace que el getter se vea, de cara al usuario, como una propiedad normal, ya que no hay necesidad de invocarlo como una función.  
	- También está la posibilidad de codificar en el getter un cálculo generado cada vez que sea invocado.
		- Esto puede ser útil, por ejemplo, si es que no se quiere que se retorne información sensible, creando un calculo que ofusque la contraseña. 
			- (Un ejemplo simple es operar  ``_password.length * '*' `` para retornar un string de asteriscos en función al largo de una contraseña)
- Un getter **solo** sirve para extraer información, no para modificarla. Al hacer un valor privado, es imposible usar el asignador de dot notation.
###### Setters
- Para cambiar los datos privados internos se utilizan setters. Dart también posee una **keyword** para crearlos. 
	- La keyword es `set`
		- `set myVar(String text) => _myVar = text;`
		- En este caso es notable que el datatype del método se define con `set` y el argumento que se le proporciona es el valor que se asignará en el parámetro.
	- Un posible uso de un setter podría ser para poder establecer una contraseña. 
		- Es posible establecer lógica para comprobar la validez de la misma contraseña.

**No hay necesidad de abusar de los getters y setters si su uso no está justificado**
- Por ejemplo, un Email podría usar un atributo público sin problemas. 
	- Si buscas tener un getter pero no un setter, es tan simple como establecer el variable qualifier del atributo como final, el atributo será inmodificable. 
- Si se usan atributos públicos, los setters y getters se crean implícitamente y se acceden con dot notation como fue expuesto anteriormente.

#### Conceptos Clave
Un elemento fundamental en el uso de clases son los [[Constructors]].