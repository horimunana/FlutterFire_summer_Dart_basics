mixin Swimmer {
  void swim() => print('I swim in the water');
}

mixin Flyer {
  void fly() => print('I fly in the sky');
}

class Animal {}

// Duck inherits from Animal, and "mixes in" Swimmer and Flyer
class Duck extends Animal with Swimmer, Flyer {}
