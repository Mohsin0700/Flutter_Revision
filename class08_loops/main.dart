void main(){
  // For loop
  for(int i = 0; i <= 10; i++) {
    print(i);
  }

  List students = ["Hafiz Mohsin", "Muhammad Arbab", "Muhammad Munawar"];
  // For in loop
  for(var i in students) {
    print(i.length);
  }
  // While Loop
  int num1 = 1;
  while(num1 < 5){
    print("Hello World");
    print("Line break");
    num1++;
  }

  bool isLoggedIn = false;
  do {
    print("This is a do while loop which will run definitly for once");
  } while(isLoggedIn == true);
}