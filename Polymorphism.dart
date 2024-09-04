void main() {
  // Polymorphism in action
  Animal myDog = Dog();
  Animal myCat = Cat();

  myDog.makeSound(); // Output: Woof! Woof!
  myCat.makeSound(); // Output: Meow!
}

// Superclass
class Animal {
  void makeSound() {
    print('Some generic sound');
  }
}

// Subclass 1
class Dog extends Animal {
  @override
  void makeSound() {
    print('Woof! Woof!');
  }
}

// Subclass 2
class Cat extends Animal {
  @override
  void makeSound() {
    print('Meow!');
  }
}

