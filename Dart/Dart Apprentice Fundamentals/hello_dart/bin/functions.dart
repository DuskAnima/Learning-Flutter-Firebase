void main() {
  // Exercise
  String youAreWonderful({required String name, int numberPeople = 30}) {
    return "You're wonderful, $name. $numberPeople people think so.";
  }
  print(youAreWonderful(name:'Bob'));
}
