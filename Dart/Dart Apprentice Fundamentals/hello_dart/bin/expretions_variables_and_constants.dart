import 'dart:math';

void main() {
  print('Hello, Dart!');

  ////////////// Expressions, Variables and Constants

  // Exercise 1
  print(1 / sqrt(2));
  print(sin(45 * pi / 180));

  // Exercise 2
  int myAge = 99;
  print(myAge);
  double averageAge = 99;
  averageAge = (99 + 77) / 2;
  print(averageAge);
  const testNumber = 41;
  const evenOdd = testNumber % 2;
  print(evenOdd);

  // Challenge 1: Variable Dogs
  int dogs = 1;
  dogs++;
  print(dogs);

  // Challenge 2: Make It Compile

  int age = 16;
  print(age);
  age = 30;
  print(age);

  // Challenge 3: Compute the Answer

  const x = 46;
  const y = 10;

  const answer1 = (x * 100) + y;
  const answer2 = (x * 100) + (y * 100);
  const answer3 = (x * 100) + (y / 10);
  print(answer1); //4610
  print(answer2); //5600
  print(answer3); //4601.0

  // Challenge 4: Average Rating

  double rating1 = 123;
  double rating2 = 351;
  double rating3 = 4;
  double averageRating = (rating1 + rating2 + rating3) / 3;
  print(averageRating);

  // Challenge 5: Quadratic Equations
  const a = 2.0;
  const b = 3.0;
  const c = 1.0;
  final root1 = (-b + sqrt(b * b - 4 * a * c)) / (2 * a);
  final root2 = (-b - sqrt(b * b - 4 * a * c)) / (2 * a);
  print(root1);
  print(root2);
}
