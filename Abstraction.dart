//for extends
//Concrete Classes 
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


// for implemets
// Defining an interface using an abstract class
//Dart does not use the interface keyword and used implemets to make it
//Abstract Methods: An interface typically includes abstract methods (methods without a body) that implementing classes must define
//Interfaces define a contract for classes in Dart (Facts)
abstract class Animal {
  void speak(); // Abstract method
}

// Class implementing the Animal interface
class Dog implements Animal {
  @override
  void speak() {
    print('Woof!');
  }
}

// Another class implementing the Animal interface
class Cat implements Animal {
  @override
  void speak() {
    print('Meow!');
  }
}

void main() {
  Animal myDog = Dog();
  Animal myCat = Cat();

  myDog.speak(); // Output: Woof!
  myCat.speak(); // Output: Meow!
}
