// Superclass
class Vehicle {
  String color;

  Vehicle(this.color);

  void displayInfo() {
    print('Vehicle color: $color');
  }
}

// Subclass
class Car extends Vehicle {
  int numberOfDoors;

  Car(String color, this.numberOfDoors) : super(color);

  void displayCarInfo() {
    displayInfo(); // Calling method from the superclass
    print('Number of doors: $numberOfDoors');
  }
}

void main() {
  Car myCar = Car('Red', 4);
  myCar.displayCarInfo();
}


//Example of Composition:
//This allows for greater flexibility and reusability without the constraints of inheritance.
 // Class 1 + Class 2 <== chiled

// A class representing an Engine
class Engine {
  String type;

  Engine(this.type);

  void start() {
    print('Engine of type $type started.');
  }
}

// A class representing a Car that uses composition
class Car {
  String color;
  Engine engine; // Composition: Car has an Engine

  Car(this.color, this.engine);

  void displayInfo() {
    print('Car color: $color');
    engine.start(); // Using the engine's method
  }
}

void main() {
  Engine myEngine = Engine('V8');
  Car myCar = Car('Blue', myEngine);
  myCar.displayInfo();
}

