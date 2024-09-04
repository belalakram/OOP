void main() {
  Circle myCircle = Circle();
  myCircle.draw(); // Calls Circle’s draw method
}
abstract class Shape {
  void draw(); // Abstract method (no implementation)
}

class Circle extends Shape {
  @override
  void draw() {
    print('Drawing a circle');
  }
}
