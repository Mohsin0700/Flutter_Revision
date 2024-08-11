void main(){
  // List is used to store multiple values of diffrent and same types...
  var names = ["Mohsin", "Arbab", "Ali", "Hasan"];
  // if we create a list using var keyword it will fix list type to it's first index value whatever it will be
  print(names);
  // so in this case if want to change any value from string to integer we can't, it will throw an error.
  // names[2] = 5;
  // therefore we use List keywor explicitly to create a list which accept all data types
  List data = ["Mohsin", "26", true];
  data[1] = 27;
  print(data);

  //****************************************** */ List types************************************************  // 
  
  //we can also create list of different specific types, If we want to create a list of type string which only accept string and do not accept any other type like int,bool or double. so we will create it as
  List<String> studentNames = ["Mohsin", "Arbab", "Ali", "Hasan"];
  // Now this list will not accept any other data type.
  // studentNames[3] = false;
  //we can have lists of different data types
  List<int> studentAges = [25,16,14,13,18,10];
  List<bool> loginSessions = [false, true, true, false, false]; 

  // **********************************Lists built-in methods/functions****************************************
  // (01) list.add method
  // This method is used to add an item in the end of the list
  studentNames.add("Hafiz Sahab");
  print(studentNames);

  // (02) list.addAll()
  // This method is used to add multiple items in the end of the list
  studentNames.addAll(["Ali Hamza", "Ali Akbar", "Kashan"]);
  print(studentNames);

  // (03) list.remove()
  // It deletes specified element from a list by taking that element through argument which we want to delete
  studentNames.remove("Hafiz Sahab");
  print(studentNames);

  // (04) list.removeAt()
  // This method takes an index as an argument and delete that element based on given index
  studentNames.removeAt(5);
  print(studentNames);

  // (05) list.removeWhere()
  // This method removes all elements based on given condition
    // studentNames.removeWhere((item)=> item.length > 5);
    // print(studentNames);

  // (06) list.removeRange()
  // This method is used to delete multiple items from specific index
  studentNames.removeRange(1, 4);
  print(studentNames);

  // (07) list.length
  // It returns list length
  print(studentNames.length);

  // (08) list.replaceRange()
  // This method replace multiple elements at specific location in the list
  studentNames.replaceRange(1, 1, ["Arbab", "Ali", "Hasan"]);
  studentNames.replaceRange(5, 5, ["Hasham", "Kashif", "Khurshid"]);
  print(studentNames);

  // (09)list.first returns first element of the list
  // (10)list.last returns last element of the list
}