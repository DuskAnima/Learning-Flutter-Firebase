import 'dart:math';

void main() {
  // Exercise
  String youAreWonderful({required String name, int numberPeople = 30}) {
    return "You're wonderful, $name. $numberPeople people think so.";
  }

  print(youAreWonderful(name: 'Bob'));

// Challenge 1

  num circleArea(num radius) => pi * radius * radius;

  print(circleArea(3));

  // Challenge 2
  bool isNumberDivisible(int number, int divisor) => (number % divisor == 0);

  bool isPrime(int number) {
    if (number != 1) {
      for (int i = 2; i <= sqrt(number); i++) {
        bool operation = isNumberDivisible(number, i); // T o F
        if (operation == true) {
          return false;
        }
      }
      return true;
    } else {
      return false;
    }
  }

  print(isPrime(6));
  print(isPrime(13));
  print(isPrime(8893));
}
