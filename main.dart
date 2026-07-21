import 'animal_class.dart';
import 'cat_class.dart';
import 'dog_class.dart';
import 'shape.dart';
import 'test.dart';
import 'userClass.dart';

void main() {
  // Instance
  final user = Userclass("Hori", 25);
  print(user);
  user.getMoney(500);

  // instance of dog for inheritance and polymorphysm
  final dog = DogClass("Fox");
  final cat = Cat("Cat");
  dog.speak();
  cat.speak();

  print("--------------------------------Inheritance and polymorphism");
  // Polymorphism
  List<AnimalClass> animals = [DogClass('Rex'), Cat('Whiskers')];
  for (var animal in animals) {
    makeAnimalSpeak(animal); // Polymorphism in action!
  }

  print(
    "-------------------------------- Abstract method and and polymorphism----------",
  );
  List<Shape> shapes = [Circle(5), Rectangle(4, 6)];
  for (var s in shapes) {
    print(s.calculateArea().toStringAsFixed(2));
    // Polymorphism + abstract method
  }
  print(
    "--------------------------------Testing Abstract method and and polymorphism----------",
  );

  final db = MongoDb();
  db.connect();
}
