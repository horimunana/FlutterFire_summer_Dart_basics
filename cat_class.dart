import 'animal_class.dart';

class Cat extends AnimalClass {
  final String name;
  Cat(this.name) : super(name);

  @override
  void speak() {
    super.speak();
    print('$name meows: Meow!');
  }
}

void makeAnimalSpeak(AnimalClass animal) {
  // Works for Dog, Cat, or any subclass of Animal
  animal.speak();
}
