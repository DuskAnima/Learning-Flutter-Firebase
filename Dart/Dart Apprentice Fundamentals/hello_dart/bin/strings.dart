import 'package:characters/characters.dart';

void main() {
  // Strings
  var greetings = 'hello dart';
  greetings = 'hello flutter'; // No es que se reemplaze solo la palabra "dart", sino que se redefine 
  // completamente el string.
  print(greetings);
  const salutation = 'Hello!';
  print(salutation.codeUnits); // Estos son los códigos en los que están establecidos los caractéres 
  // Los simbolos son un cacho:
  const dart = "🎯"; // emoji dart (bullseye)
  print(dart.codeUnits); // Se usan surrogate pairs (pares de códigos) en caso de emojis [55356, 57263]
  print(dart.runes); // Unicode points en Dart se llaman runes. Son valores más manejables (127919)
  const flag = '🇲🇳'; // simbolo de indicador regional (mongolia en este caso)
  print(flag.runes); // Al ser dos caratéres, se genera un par de unicodes points (127474, 127475)
  const family = '👨‍👩‍👧‍👦'; 
  print(family.runes); // "unicodes points" se pueden pegar emojis entre si usando Zero Width Joiner (con su respectivo unicode)
  print(family.length); // 11
  print(family.codeUnits.length); // 11
  print(family.runes.length); // 7
  // puro caos
  // Eso se puede solucionar usando la dependencia "characters: ^1.2.1" en el archivo pubspec.yaml e inportandola
  // con import 'package:characters/characters.dart';. Esto le agrega funcionalidad extra al String datatype
  // pudiendo manipular los Grapheme Clusters usando .characters
  // >>>>>> Unicode Extended Grapheme Cluster es lo que se entiende por multiples unicodes que dan por resultado
  // un solo simbolo 
  print(family.characters.length); // Ahora el resultado es 1
  // Cabe destacar que es recomendable usar Grapheme Clusters cuando se reciba información desde el exterior.
  
  // Concatenación
  var message = 'Hello'' my name is '; // Dart prefiere "adjacent string concatenation" AKA prescindir de un
  // operador de concatenación en los strings literales y solo ponerlos uno junto al otro.
  const name = 'Ray';
  message+= name;
  print(message); // Hello my name is Ray

  // Interpolación
  const introduction = 'Hello, my name is $name'; // No requiere ni usar formateadores ni comillas especiales, solo $
  print(introduction); // Hello, my name is Ray
  const oneThird = 1/3; // Esta operación crea un double
  const sentence = 'One third is $oneThird.'; // Los valores que no son String pasan a convertirse en String
  print(sentence); // One third is 0.3333333333333333.
  final sentenceFixed = 'One third is ${oneThird.toStringAsFixed(3)}'; // Al usar llaves dentro de la interpolación
  // es posible incrustar lógica. En este caso se puede limitar la cantidad de decimales.
  print(sentenceFixed);

  // Exercise 1

  const firstName = 'MyFirstName';
  const lastName = 'MyLastName';
  const fullname = '$firstName $lastName';
  const myDetails = 'Hello, my name is $fullname';
  print(myDetails);

  // Multi-Line Strings

  const bigString = ''' Hello 
  This is a 
  Multi
  
  Line String''';
  print(bigString); /// usando comilla triple se pueden hacer strings de múltiples lineas

  // Trukis
  const twoLines = 'Two lines\nString';
  const rawString = r'One line \nString'; // r al inicio del string elimina cualquier propiedad de alguna carácter especial
  print('''$twoLines 
$rawString''');

  // Insertar Unicode;

  print('I \u2764 Dart\u0021'); // Si se sabe el unicode, se puede insertar anteponiendo "\u"
  print('I love \u{1F3AF}'); // Para unicode con valor hexagesimal mayor a ffff es necesario usar corchetes

  // Challenge 1: Same Same, but Different
  const twoCountries = '🇹🇩🇷🇴';
  print(twoCountries.runes); // el primero es y segundo es Chad, el tercero y cuarto es Romania

  // Challenge 2: How Many?

  const vote = 'Thumbs up! 👍🏿';
  print(vote.codeUnits.length); // 15 code units.
  print(vote.runes.length); // 15 code points.
  print(vote.characters.length); // 12 grapheme clusters.

  // Challenge 3: Find the Error

  var nameChallenge = 'Ray'; 
  nameChallenge += ' Wenderlich';
  print(nameChallenge); // Se transforma const a var para poder mutar su contenido.

  // Challenge 4: In Summary
  
  const number = 10;
  const multiplier = 5;
  final summary = '$number \u00D7 $multiplier = ${number * multiplier}';
  print(summary); // 10 x 5 = 50


}
