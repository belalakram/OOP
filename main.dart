//Object Oriented Programming in Dart

// Lesson 1
//هنا هنشوف ازي نقدر نعمل class ونطبع ناتج
// اول حاجه نقدر نعرف Data Type ف Class
// تاني حاجه نفدر نعمل Behavioral للعربيات
//و هستخدم this.(object)
// void main() {
//   var car1 = Car();
//   car1.color = "Blue";
//   car1.name = "BMW";
//   car1.produceCompany = "BMW";
//   car1.producedYear = 2001;
//   print("Car name is ${car1.name}");
//   car1.move();
// }
//
// class Car {
//   String color = ''; // Default value
//   String name = ''; // Default value
//   String produceCompany = ''; // Default value
//   int producedYear = 0; // Default value
//
//   void move() {
//     print("${this.name} is moving");
//   }
// }


//----------------------------------------------------------------------------------------------------


//Leson 2 (Constructor)

//1- Dedault Constructor , وده ليه الاولويه في حاله طباعه
// void main() {
//   var car1 = Car();
//   car1.name= "bmw";
//   print("${car1.name}");
// }
//
// class Car {
//   String color= " ";
//   String name= " ";
//بيبقي فسي شكل ده
//   Car(){
//     print(" d");
//   }
// }
 // 2- parameterized constructor (ده بيقلل عدد اسطر كود في main)
// void main() {
//   var car1 = Car("blue","bmw");
//   print("${car1.name},${car1.color}");
// }
//
// class Car {
//   String color= " ";
//   String name= " ";
//
//   // Constructor
//    Car(this.color, this.name);
//
// }
//مينفعش استخدم الاتنين مع بعض

//3- custom Constructor(شبه اللي فاتت برس هنا بسهل علي المبرمج لو في كزه واحده من نفس نوع)
// void main() {
//   var car1 = Car.customConsructor("blue", "bmw");
//   print("${car1.name},${car1.color}");
// }
//
// class Car {
//   String color= " ";
//   String name= " ";
//
//   // Constructor
//   Car.customConsructor(this.color, this.name);
//
// }


//----------------------------------------------------------------------------------------------------


//Lesson 3 (Getter & Setter)

//1-Default getter and seter

// void main(){
//   var car1 = Car();
//   car1.color = "blue";
//   print(car1.color);
// }
// class Car{
//   String color = " ";
// }

//2- custom getter and setter

// void main(){
//   var car1 = Car();
//   car1.price = 1000;
//   print(car1.price);
// }
// class Car{
//   //custom getter and setter
//   double priceInEuro = 0.0;
//
//   void set price (double priceInDollar){
//     priceInEuro = priceInDollar * 0.84;
//   }
//   double get price {
//     return priceInEuro;
//   }
//
//
// }


//----------------------------------------------------------------------------------------------------


//Lesson 4 (Inheritance)
// Class اسم الابن extends  اسم االاب
// void main(){
//   var teacher1 = Teacher();
//   teacher1.eat();
// }
// class Human {
//   int age = 0;
//
//   void eat() {
//     print("eating now");
//   }
// }
//   class Teacher extends Human{
//     String graduateFrom = " ";
//     void teach(){
//       print("teaching now");
//   }
//   }



//----------------------------------------------------------------------------------------------------

 // Lesson 5 Override
//
// void main(){
//   var teacher1 = Teacher();
//   teacher1.eat();
// }
// class Human {
//   int age = 0;
//
//   void eat() {
//     print("eating now");
//   }
// }
// class Teacher extends Human{
//   String graduateFrom = " ";
//   void teach(){
//     print("teaching now");
//   }
//   // هنا ممكن اعدل في الابن
//   void eat() {
//     super.eat();//دي بتخليه سيص علي الاب وينفذ الناتج الاصلي
//     print("Teacher is eating now");
//   }
// }


//----------------------------------------------------------------------------------------------------


// Lesson 6 (Inheritance with constructors)
//
// void main(){
//   var student1 = Student("Red", "Belal");
//   student1.age = 20;
// }
// class Human{
//
// int age = 0;
//
// Human(String name) {
//   print("this human parameterized constructor");
//   print("name is $name");
// }
// }
//   class Student extends Human {
// String studyAt = " ";
// Student(String color, String name ): super(name){
//   print ("this student parameterized constructor");
//   print ("color is $color");
// }
//
// }


//----------------------------------------------------------------------------------------------------


// Lesson 7  (Abstract Methods and Classes )
//و بستخدمها ف وراثه ان اعرف اعمل  object ل class الابن و امنع عمل object لclass  الاب
// void main(){
//   var human1= Student();
//   human1.eat();
// }
//
// abstract class Human {
//   String name = "";
//   void eat();
// }
// class Student extends Human {
//   void eat (){ //لازم اعمل override
//     print("Student is eating now");
//   }
// }


//----------------------------------------------------------------------------------------------------


// Lesson 8 Interface Classes
 // class الابن implements اب1,اب2 // can used more than one class
// void main (){
//   var student1 = Student();
//   student1.breathe();
//   student1.sayHello();
// }
// class Human {
//   Human(){
//     print("Human Default Constructor");
//   }
//   void breathe (){
//
//   }
// }
// class Hello {
//   Hello(){
//     void sayHello() {
//     }
//
//   }
//
// }
// class Student implements Human,Hello {
//   void breathe() {
//     print("Student is breathing now");
//   }
//
//   void sayHello() {//لازم اعمل override
//     print("Student say Hello");
//   }
// }

//----------------------------------------------------------------------------------------------------

// Lesson 9 Callable Function
// بنستخدم call ف اني احنا ننادي علي الشئ و نستخدمه
// void main (){
//   var hello = sayHello ();
//   hello ("Belal");
// }
// class sayHello {
//   void call (String name ){
//     print("$name say Hello");
//   }
// }

//----------------------------------------------------------------------------------------------------

//Lesson 10 Static Keyword
// يقلل استخدام الذاكره في عدم التكرار
//بنستخدمها مع class name فقد مش مع object
void main(){
  print(MathCalulations.gravity);

  double x = 5 * MathCalulations.gravity;
  print(x);
}
class MathCalulations{
  //static var gravity = 9.81;
  static const gravity = 9.81; // عشان محدش يغيرها خالص

}