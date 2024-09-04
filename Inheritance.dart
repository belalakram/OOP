void main() {
  Dog myDog = Dog();
  myDog.speak(); // Inherited from Animal
  myDog.bark();  // Dog-specific behavior
}

class Animal {
  void speak() {
    print('Animal speaks');
  }
}

class Dog extends Animal {
  void bark() {
    print('Dog barks');
  }
}

