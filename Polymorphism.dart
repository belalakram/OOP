//allows objects of different classes to be treated as objects of a common superclass
void main() {
  
  Animal myDog = Dog(); // Polymorphism in action
  Animal myCat = Cat(); // Polymorphism in action
// i Can make it 
  //  Dog myDog = Dog(); 
  // Cat myCat = Cat(); 


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

