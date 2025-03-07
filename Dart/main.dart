/*
// Importing core libraries
import 'dart:math';
// Importing core libraries form external packages 
import 'package:test/test.dart';
// Importing files 
import 'path/to/my/other_files'
*/

var name = 'Voyager I';
var year = 1977;
var antennaDiameter = 3.7;
var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
var image = {
  'tags': ['saturn'],
  'url': '//path/to/saturn.jpg',
};

void main() {
  // la lógica siempre debe ir dentro de una función, sino, Dart lo declara como erroneo

  if (year >= 2001) {
    print('21st century');
  } else if (year <= 1901) {
    print('20th century');
  }

  for (final object in flybyObjects) {
    print(object);
  }

  for (int month = 1; month <= 12; month++) {
    print(month);
  }

  while (year < 2016) {
    year += 1;
  }

  var result = fibonacci(20);

  print(result);

  flybyObjects.where((name) => name.contains('turn')).forEach(print);
  // las funciones anonimas deben ir establecidas dentro de una función o como parte de una estructura de datos.

  var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
  voyager.describe();

  var voyager3 = Spacecraft.unlaunched("Voyager III");
  voyager3.describe();

  final yourPlanet = Planet.earth;
  if (!yourPlanet.isGiant) {
    print('Your planet is not a "giant planet"');
  }
}

//////////// Functions

int fibonacci(int n) {
  // la definición de funciones debe estar ubicada fuera de "void main()"
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

///////////// Classes

class Spacecraft {
  String name;
  DateTime? launchDate;

  // Read-only non-final property.
  int? get launchYear => launchDate?.year;

  // Constructor, with syntactic sugar for assignement to members.
  Spacecraft(this.name, this.launchDate) {
    // Initialization code goes here.
  }

  // Named constructor that forwards to the default one.
  Spacecraft.unlaunched(String name) : this(name, null);

  // Method
  void describe() {
    print('Spacecraft: $name');
    // Type promotion doesn't work on getters
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}

/////////////// ENUM

enum PlanetType { terrestrial, gas, ice }

// Enum that enumerates the different planet in our solar system
// and some of their properties.
enum Planet {
  mercury(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  venus(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  earth(planetType: PlanetType.terrestrial, moons: 1, hasRings: false),
  //...
  uranus(planetType: PlanetType.ice, moons: 27, hasRings: true),
  nepture(planetType: PlanetType.ice, moons: 14, hasRings: true);

  /// A constant generating constructor
  const Planet({
    required this.planetType,
    required this.moons,
    required this.hasRings,
  });

  /// All instances variables are final
  final PlanetType planetType;
  final int moons;
  final bool hasRings;

  /// Enhace enums support getters and other methods
  bool get isGiant =>
      planetType == PlanetType.gas || planetType == PlanetType.ice;
}

/////////// Inheritance

class Orbiter extends Spacecraft {
  double altitude;

  Orbiter(super.name, DateTime super.launchDate, this.altitude);
}

/////////// Mixins

mixin Piloted {
  int astronauts = 1;

  void describeCrew() {
    print("number of astronauts: $astronauts");
  }
}

class PilotedCraft extends Spacecraft with Piloted {
  String stuff;
  PilotedCraft(super.name, super.astronauts, this.stuff);
}

//////////////// Interfaces

class MockSpaceship implements Spacecraft { // Toma la forma de una clase pero sobreescribe todos sus metodos
  @override
  String name = "MockShip";
  @override
  DateTime? launchDate;
  @override
  int? get launchYear => throw UnimplementedError();

  @override
  void describe() {
    print("This is harder than I thought.");
  }
}

