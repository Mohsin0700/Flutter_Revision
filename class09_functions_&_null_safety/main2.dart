void main() {
  // If function is returning something we can store it's result in a variable
  int abc = sumOfTwoNum();
  print(abc);
}

// We can also specify function type based on what is being returned by that function.
int sumOfTwoNum() {
  int num1 = 5;
  int num2 = 10;
  int result = num1 + num2;
  return result;
}
