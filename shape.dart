// Working with absract classes
abstract class Shape {
  double calculateArea();

  // Concrete method (implemented): inherited by all subclasses
  void printAreaResponse() {
    print('Area: ${calculateArea().toStringAsFixed(2)}');
  }
}

// class Circle
class Circle extends Shape {
  final double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    // TODO: implement calculateArea
    return 3.14 * radius * radius;
  }
}

// class reactangle
class Rectangle extends Shape {
  final double width, height;
  Rectangle(this.width, this.height);

  @override
  double calculateArea() => width * height;
}
