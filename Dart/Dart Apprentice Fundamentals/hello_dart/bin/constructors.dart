import 'package:hello_dart/user.dart';

void main(){
final user = User(id: 42, name: 'Ray');
final anonymousUser = User.anonymous();
print(user);
print(anonymousUser);
}


