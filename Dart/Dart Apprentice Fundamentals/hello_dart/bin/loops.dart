import 'dart:math';
void main() {

  // While
  var sum = 1;
  while (sum < 10) {
    print('while $sum');
    sum++;
  } 

  // do-while
  sum = 1;
  do {
    sum+= 2;
    print('do while $sum');
  } while (sum < 10);

  // Exercise
  var counter = 0;
  while (counter < 10) {
    print('the counter is $counter');
    counter++;
  }

  // Exercise 
  for (var loop = 1; loop <= 10; loop++) {
    print("loop number ${pow(loop, 2)}");
  }

  // Challenge 1
  const number = 946;
  const base = 2;
  num result = 1; 
  for (var i = 2; result < number; i++) {
    // number es el numero dado, el resultado debe ser igual o mayor
    // i será el exponente
    // la base es una constante de 2
    // el resultado se asignará nuevamente por cada iteración
    // la condición es que el resultado sea menor a number, se detiene si es igual o mayor. 
    result = pow(base, i);
    print(result);
  }
  
  // Challenge 2

  const nthFibonacci = 11;
  var nResult = 0; 
  var anterior = 1;
  // Fibonacci, el 1 debe sumarse con el 1, luego el resultado se debe sumar con su numero anterior, luego el resultado con su anterior
  for (var i = 1; i != nthFibonacci; i++) {
    nResult = nResult + anterior;
    anterior = nResult - anterior;
    print('iteración $i, fibonacci $nResult');
// 1 + 1 = 2 / 1 + 2 = 3 / 2 + 3 = 5 / 3 + 5 = 8 
  }
  
  // Challenge 3

  var suma = 0;
  for (var i = 0; i <= 5; i++){
    suma += i;
    print('iteración $i'); // La primera iteración comienza con el numero definido, en las siguientes iteraciones se opera. 
    print('total $suma'); // las operaciones definidas en el bloque de codigo sí ocurren en la primera operación.
  }

  // Challenge 4

  var count = 10;
  while (count >= 0) {
    print(count);
    count--;
  }

  // Challenge 5

  for (var i = 0.0; i <= 1.0; i += 0.1){
    print(i.toStringAsFixed(1));
  }
}