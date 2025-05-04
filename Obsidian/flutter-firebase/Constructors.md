Los constructores son métodos built-in que crean o *construyen* instancias de una clase. 
- Básicamente los constructores construyen nuevos objetos.
- Los constructores que tienen los mismos nombres que las clases de las cuales derivan se llaman **Unnamed Constructors**.
	- También el type return del método constructor implícitamente es del mismo tipo que la clase de la cual deriva.

#### Default Constructor
- Cuando no se provee un constructor, Dart provee un constructor por defecto que no toma ningún parámetro y solo retorna una instancia de clase.
	- En el siguiente ejemplo se puede ver una versión sin y con **método constructor**.
		- Ambos son equivalentes, declarar el método no afecta en nada.
```
class Address {
	var value = '';
}
/////////////////////
class Address {
	Address();
	var value = '';
}
```
#### Custom Constructor
- Es posible pasar parámetros para modificar el como se construye el objeto.
	- Esto es similar a como se construye una función.
- Como en el ejemplo anterior, el constructor deberá ser el mismo que el de la clase. Este tipo de constructor es llamado **generative constructor** porque directamente genera un objeto del mismo tipo.
- Existen 2 tipos de Custom Constructor: Long-form y Short-form.
- Para establecer las propiedades de un objeto se utiliza la keyword ``this``
	- La convención en Dart es poner el constructor antes de las variables de propiedades. 
	- ``this`` implica una referencia a la propiedad del objeto mismo al momento de referenciarse.
	- Se debe utilizar dot notation:
		- ``this.property = parameter``
			- Llamar a la propiedad del objeto igual que al parámetro constructor no es obligatorio pero ayuda a la legibilidad. 
				- Hacer esto se llama **shadowing**.
	- Con ``this`` se hace referencia a **la propiedad del objeto**
	- Sin ``this`` se hace referencia al parámetro del constructor.  
- Al establecer los constructores no hay necesidad de inicializar las variables con valores por defecto, ya que el constructor ya inicializa las variables.
	- De todas formas, también es importante manejar la **nullability**.
###### Long-Form Constructor 
```
class User {
	User(int id, String name) {
		this.id = id;
		this.name = name;
	}
	int id = 0;
	String name = '';
	//...
}
```
###### Short-Form Constructor
- En vez de darle un body al constructor, se listan las propiedades que quieres inicializar, prefijadas con la keyword `this`. 
	- De esta manera los mismos argumentos enviados al constructor se utilizan para inicializar las propiedades del objeto. 
- Dart infiere los datatypes desde los parámetros establecidos en el class body.
```
class User {
	User(this.id, this.name);
	int id = 0;
	String name = '';
	//...
}
```
#### Named Constructors
- Este constructor se separa de los **unnamed constructors** por tener un identificador que le asigna un nombre.
	- El identificador debe ser asignado con dot notation justo después de declarar el nombre default del constructor.
		- `ClassName.identifierName()`
	- Un ejemplo de uso sería cuando quieres manejar casos excepcionales, como cuando tienes a un usuario anónimo con valores por defecto. 
```
class User {
	User(this.id, this.name)
	User.annonymous(){
		int id = 0;
		String name = 'anonymous';
	}
	//... 
}
```
nota: En este caso como no hay parámetros o variables locales con el nombre id y nombre, no hay necesidad de usar `this`.
#### Forwarding Constructors 
- En el contexto de los constructores, **forwarding** implica delegar la tarea de inicializar un objeto a otro constructor de la misma clase.
	- Esto significa que el constructor `User.anonymous()` no define la lógica de inicialización de los campos `id` y `name` directamente. En cambio, delega esa responsabilidad al constructor principal `User(this.id, this.name)`, pasando valores predeterminados (`0` y `'anonymous'`).
	- Esto es una forma de facilitar la legibilidad y editabilidad de las clases con constructores nombrados.
```
class User {
	User(this.id, this.name)
	User.annonymous() : this(0, 'anonymous');
	int id = 0;
	String name = 'anonymous';
	}
	//...
}
```
#### Optional and Named Parameters
Todo lo aprendido sobre parámetros opcionales y nombrados en [funciones](Functions#Named%20Parameters) también aplica en los métodos constructores.
- Es posible establecer parámetros opcionales usando corchetes []
	- `MyClass([this.myProperty]);`.
- Se pueden establecer opcionales y nombradas usando llaves {}
	- `MyClass({this.myProperty});`.
- O pueden ser opcionales y requeridas usando llaves {} y la keyword `required`.
	- `MyClas({required this.myProperty});`

#### Initializer List
- El initializer list, en este contexto, es una lista de variables que se colocan luego de dos puntos `:` establecidos después del método constructor.
- Es una forma para poder crear parámetros nombrados que, a su vez, se les permita ser privados.
	- Esto permite que, externamente los parámetros tienen un nombre público mientras internamente estás utilizando variables privadas.
``` 
class User {
	User({int id = 0, String name = 'anonymous'}) 
	:   _id = id
		_name = name;
}
```
No olvidar que hacer una variable privada solo hace que no se pueda acceder a ella a nivel de librería, pero, si se está operando localmente en el mismo archivo, la variable sigue siendo susceptible a cambios.
#### Constant Constructors

#### Información complementaria
- Aunque la palabra "[forwarding](#Forwarding%20Constructors)" en esta sección se utilizó para hablar de constructores, generalmente se asocia con la delegación de [métodos](Classes#Methods) (como el caso de llamar a un método de otro objeto).