void main(){
final user = User(42, 'Ray');
print(user);
}

// Default Constructor

class Address {
  Address();  // El uso de esta linea es opcional para esta clase de constructores
  var value = '';
}

// Custom Constructor

class User {
  User(int id, String name){
    this.id = id;
    this.name = name;
  }
  int id = 0;
  String name = '';

  String toJson() {
    return '"{id":$id, "name":$name}';
  }
  @override
  String toString() {
    return 'User(id: $id, name: $name)';
  }
}

