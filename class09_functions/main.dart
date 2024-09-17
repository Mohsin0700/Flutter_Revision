void main() {
  // Positional and required arguments
  // printStudentDetails("Mohsin", 27);

  // Calling with all parameters
  // printTeacherDetails(name: "Hafiz Mohsin", qualification: "BSCS");
  // Calling with required parameters only
  printTeacherDetails(name: "Hafiz Mohsin");
}
// we can create multiple functions in a same file to do similar task multiple times.
// we create function outside of main function.
// every function can have it's data type i.e void or whatever it will return.
// we use parameters to keep our data dynamically changed

// Positional and requuired Parameters
printStudentDetails(String name, num age) {
  // print("Hello my name is $name and I am $age years old");
}
// Named and optioanl parameters
// CASE A
// printTeacherDetails({required String name, String? qualification}) {
// The expression I have used in below statement is called null safety to avoid error in app.
// We can also set some default value in parameter
// CASE B
printTeacherDetails({required String name, String qualification = "BA"}) {
  // IN CASE OF A
  // print(
  //     "Teacher name is $name and his qualification is ${qualification ?? "BA"}");
  // IN CASE OF B
  print("Teacher name is $name and his qualification is $qualification");
}
