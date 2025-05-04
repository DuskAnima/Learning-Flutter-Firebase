class User {

// Custom Constructor
  User({int id = 0, String name = 'anonymous'}) 
  : _id = id,
  _name = name {
    print('User name $_name');
  } 

// Named Constructor
  /*User.anonymous() {
  id = 0;
  name = 'anonymous';
  }*/

// Forwarding Constructor
  User.anonymous() : this();

  int _id;
  String _name;
  String toJson() {
    return '"{id":$_id, "name":$_name}';
  }
  @override
  String toString() {
    return 'User(id: $_id, name: $_name)';
  }
}


class Address {
// Default Constructor
  Address();  // El uso de esta linea es opcional para esta clase de constructores
  var value = '';
}

