void main(){

final user = User();
user.name = "Ray";
user.id = 42;
print(user);
print(user.toJson());
final myPassword = Password();
print(myPassword.plainText);
print(myPassword.obfuscated);
myPassword.plainText = "kong";
print(myPassword.plainText);

// Challenge 1
final rectangulo = Rectangle()
..width = -1
..height = 10;

print("width: ${rectangulo.width}");
print("height: ${rectangulo.height}");
print("area: ${rectangulo.area}");

}

class User {
  int id = 0;
  String name = '';

  String toJson() {
    return '("id":$id, "name":"$name")';
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name)';
  }
  }

class Password {
  String _plainText = 'pass123'; 

  String get plainText => _plainText;

  String get obfuscated {
    final lenght = _plainText.length;
    return '*' * lenght;
  }

  set plainText(String text) {
    if (text.length < 6) {
      print('Password must have 6 or more characters.');
      return;
    } 
    _plainText = text;
  }
}

// Challenge 1

class Rectangle {
  double _width = 0;
  double _height = 0;

  double get width => _width;
  double get height => _height;
  double get area => _width * _height; 

  set width(double number) {
    if (number < 0){
      print("You can't input negative numbers.");
    } else {
      _width = number;
    }
  }
  
    set height(double number) {
    if (number < 0){
      print("You can't input negative numbers.");
    } else {
      _height = number;
    }
  }
}