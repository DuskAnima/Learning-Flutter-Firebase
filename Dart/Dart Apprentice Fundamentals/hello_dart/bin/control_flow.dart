void main(){
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
  const myAge = 100;
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
  // The If Statement:
  
}