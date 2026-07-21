import 'animal_class.dart';

class DogClass extends AnimalClass {
  DogClass(String name) : super(name);

  @override
  void speak() {
    super.speak();
    print("$name burk: woof");
  }
}
