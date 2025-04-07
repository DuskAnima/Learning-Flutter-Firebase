enum Weather { sunny, snowy, cloudy, rainy }

void main() {
  // Probando igualdad
  const doesOneEqualTwo = (1 == 2);
  print(doesOneEqualTwo);
  // Probando desigualdad
  const doesNotOneEqualTwo = (1 != 2);
  print(doesNotOneEqualTwo);
  // formas de usar Not (!)
  const alsoTrue = !(1 == 2);
  print(alsoTrue);
  // Exercises
  // 1
  /* const myAge = 100;
  const isTeenager = myAge >= 13 && myAge <= 19;
  print('Is teeneager: $isTeenager'); 
  // 2
  const maryAge = 30;
  const bothTeenagers = (maryAge >= 13 && maryAge <= 19) && isTeenager;
  print('Booth teenagers: $bothTeenagers');
  // 3 
  const String reader = 'My Name';
  const String ray = 'Ray Wenderlich';
  const bool rayIsReader =  reader == ray;
  print('Ray is reader: $rayIsReader');
  */
  // Exercises 2
  const myAge = 13;
  print('Excercise 1');
  if (myAge >= 14 && myAge <= 19) {
    print('teenager');
  } else {
    print('no teeneager');
  }
  print('Excercise 1');
  const answer = (myAge >= 13 && myAge <= 19) ? 'teeneager' : 'not teeneager';
  print(answer);

  const number = 5;

  print('switch practice');
  switch (number) {
    case 0:
      print('zero');
    case 1:
      print('one');
    case 2:
      print('two');
    case 3:
      print('three');
    case 4:
      print('four');
    default:
      print('something else');
  }

  const weatherToday = Weather.cloudy;
  switch (weatherToday) {
    case Weather.sunny:
      print('Put on sunscreen.');
    case Weather.snowy:
      print('Get your skis');
    case Weather.cloudy:
    case Weather.rainy:
      print('Bring an umbrella');
  }
  // Challenge 1
  const firstName = 'Bob';
  var lastName = '';
  if (firstName == 'Bob') {
    lastName = 'Smith';
  } else if (firstName == 'Ray') {
    lastName = 'Wenderlich';
  }
  final fullName = '$firstName $lastName';
  print(fullName);
}
