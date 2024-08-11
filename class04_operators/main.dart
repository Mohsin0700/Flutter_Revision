void main(){
  // *************************************Arithmatic Operators***************************************************
  int num1 = 5;
  int num2 = 10;
  // Subtraction operator
  int result1 = num2 - num1;
  // Addition operator
  int result2 = num1 + num2;
  // Division operator resulting double
  double result3 = num2 / num1;
  // Multiplication operator
  int result4 = num1 * 2;
  // Division operator resulting integer
  int result5 = num2 ~/ num1;
  // Remainder operator
  int result6 = num2 % num1;

  // print(result1);
  // print(result2);
  // print(result3);
  // print(result4);
  // print(result5);
  // print(result6);


  // Increament opearator 
  num1++;
  // This operator is used to increase any value by 1
  // Decrement operator
  num1--;
  // Similarly, this operator is used to decrease any value by 1.
  // There are two more concepts in these operators, which are
  // Pre-increment & Post-increment as well as Pre-decrement and Post-decrement
  // *****Let's play with these operators.

  num1++; //  incremented value by 1
  print(num1); // 6
  print(num1++); // 6;
  print(num1); // 7;
  print(++num1); // 8;
  print(++num1); // 9;
  print(num1--); // 9;
  print(--num1); // 7;
  // These are some advance concpets, if you want to know more about it feel free to contact me anytime at my whatsapp +923433440700.....
// *************************************Equality & Relational Operators***********************************
int num3 = 5;
int num4 = 10;
int num5 = 6;
int num6 = 7;

// Greater than operator
print(num2 > num1);
// Less than operator
print(num5 < num6);
// Greater than equal to
print(num4 >= num2);
// Less than equal to
print(num3 <= num1);
// Equalt to
print("Num1 is: $num1 and num3 is: $num3");
print(num1 == num3);
// Not equal to
print(num1 != num2);

// *************************************Conditional Operators***********************************
// *************************************Conditional Operators***********************************
print("Condtional Operators");
// AND operator represented by && sign is used when both conditions should be true;
bool condition1 = 12 > 6 && 5 < 10;
bool condition2 = 12 > 6 && 5 > 10;
// OR operator represented by || sign is used when one of tww conditions should be true;
bool condition03= 12 > 6 || 5 > 10;
// NOT operator represented by ! sign is used when we want opposite result of a real real result;
print(condition1);
print(condition2);
print(condition03);
print("Example of NOT operators");
print(!condition1);
print(!condition2);
print(!condition03);

}