Los constructores son métodos built-in que crean o *construyen* instancias de una clase. 
- Básicamente los constructores construyen nuevos objetos.
- Los constructores tienen los mismos nombres que las clases de las cuales derivan.
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
- Para establecer las propiedades de un objeto se utiliza la keyword **this**
	- **this** implica una referencia a la propiedad del objeto mismo al momento de referenciarse.
	- Se debe utilizar dot notation:
		- ``this.property = parameter``
			- Llamar a la propiedad del objeto igual que al parámetro constructor no es obligatorio pero ayuda a la legibilidad. 
				- Hacer esto se llama **shadowing**.
	- Con ``this`` se hace referencia a **la propiedad del objeto**
	- Sin ``this`` se hace referencia al parámetro del constructor.  

###### Long-Form Constructor 
La convención en Dart es poner el constructor antes de las variables de propiedades. 
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
 