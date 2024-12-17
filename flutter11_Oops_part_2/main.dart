// void main() {
// Whenever we create object of a class its constructor is called by default.
// Student s1 = Student("Mohsin", 27);
// }

// class Student {
//   String name;
//   int age;
//   // This keyword targets class attributes and its members
//   Student(this.name, this.age) {
//     showInfo();
//   }

//   showInfo() {
//     print("Student name is: $name & his age is: $age");
//   }
// }

// *************************************************************************************
// **************************BASIC INHERITANCE******************************************
// void main() {
//   Teacher obj = Teacher();
//   obj.name = "Riyasat";
//   obj.age = 27;
//   obj.showInfo();
// }

// class Person {
//   String? name;
//   int? age;

//   showInfo() {
//     print("My name is $name and I am $age years old");
//   }
// }

// class Teacher extends Person {}

// *******************************************************************************************
// **************************CONSTRUCTOR INHERITANCE******************************************
// void main() {
//   Person obj1 = Person(name: "Mohsin", age: 27);
//   obj1.showInfo();
//   print(obj1.name);
//   Teacher obj2 = Teacher(namee: "Muhammad Ali", agee: 60);
//   obj2.showInfo();
//   print(obj2.name);
// }

// class Person {
//   late String name;
//   late int age;

//   Person({required this.name, required this.age}) {
//     print("Parent class constructor called");
//   }
//   showInfo() {
//     print("Hello my name is $name and I am $age year old");
//   }
// }

// class Teacher extends Person {
//   Teacher({required String namee, required int agee})
//       : super(name: namee, age: agee) {
//     print("Child class constructor called");
//   }
// }

// *******************************************************************************************
// ****************************************MIXINS*********************************************
// void main() {
//   Duck obj1 = Duck("Duck");
//   Fish obj2 = Fish("Fish");
//   Eagle obj3 = Eagle("Eagle");

//   obj1.swim(obj1.name);
//   obj1.fly(obj1.name);
//   obj2.swim(obj2.name);
//   obj3.fly(obj3.name);
// }

// mixin Swimming {
//   void swim(String name) {
//     print("$name can swim");
//   }
// }

// mixin Flying {
//   void fly(String name) {
//     print("$name can fly");
//   }
// }

// class Duck with Swimming, Flying {
//   late String name;
//   Duck(this.name);
// }

// class Fish extends Duck with Swimming {
//   late String name;
//   Fish(this.name) : super(name);
// }

// class Eagle extends Duck with Flying {
//   late String name;
//   Eagle(this.name) : super(name);
// }
// *******************************************************************************************
// *************************************Polymorphysm******************************************
void main() {
  Student obj1 = Student();
  obj1.showInfo();
}

class Person {
  showInfo() {
    print("Main class function called");
  }
}

class Student extends Person {
  @override
  showInfo() {
    super.showInfo();
    print("Child class function called");
  }
}
// *****************************************************************************************
//***********************************Encapsulation******************************************
// Dart provide file level encapsulation which mean if both classes are in same file they can access their private properties/attributes/methods
// To achieve encapsulation in dart we can use private keys which is underscore and we can create getters and setters