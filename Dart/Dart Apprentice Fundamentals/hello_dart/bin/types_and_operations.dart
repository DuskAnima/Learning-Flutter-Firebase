void main() {
  //Exercise 1

  const age1 = 42;
  const age2 = 21; 
  const averageAge = (age1 + age2) / 2; 
  print(averageAge);
  // Pese a ser ambas variables integers, las divisiones convierten el resultado en un double dada la posibilidad
  // de que hayan decimales.  

  // Challenge 1: Teacher's Grading
  const attendance = 90;
  const homework = 80;
  const exam = 94;

  const rawGrade = (attendance * 0.2) +  (homework * 0.3) + (exam * 0.5);
  final grade = rawGrade.toInt(); // toInt se ejecuta en runtime, lo que requiere que se declare como constante final
  print(grade); 

  // Challenge 1: What Type?

  const value = 10/2;
  print(value);  // double



}