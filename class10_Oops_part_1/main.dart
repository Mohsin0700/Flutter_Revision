void main() {
  // we first crete class objects to access its memebers
  // Human obj1 = Human('Mohsin', 27);
  // Human obj2 = Human("Arbab", 25);
  Human obj = Human();
  // obj1.name = "Arbab";
  // obj1.about();
  // print("${obj1.name} is a good coder");
  // print(obj1.about());
  // print(obj1.name);
  // print(obj2.name);
}

class Human {
  // These are called class members or fields
  // String name = "Mohsin";
  // int age = 27;
  // String name;
  // int age;
  // Default Constructor
  Human() {
    print("Default constructor is called");
  }
  // Human(this.name, this.age);

  // These are called methods
  about() {
    print("Hello This is Mohsin here");
    return "Some String here";
  }

  eat() {
    // print("$name can eat");
  }

  drink() {
    // print("$name can drink");
  }
}
