void main(){
  Map<String, dynamic> userInfo = {
    "id": "abc12345",
    "name": "Mohsin",
    "age": 27,
    "city": "Karachi",
  };
  print(userInfo.keys);
  print(userInfo.values);
  userInfo["name"] = "Hafiz Mohsin"; // wrong method because we don't know if key exists or not?
  userInfo.putIfAbsent("name", ()=> "Hassan");
  print(userInfo);
  Map myInfo = {
    "contact": 03433440700,
    "cnic": 4210149356474
  };
  myInfo.addEntries(userInfo.entries);
  print(myInfo);
  // myInfo.removeWhere((k, v)=> v.startsWith('k'));
  // If we have different values rather than simple string then we can't use startsWith method with value
  // Therefore I did some alteration methode to get the desired result in case of multiple data type of values
  myInfo.removeWhere((key, value) {
  if(value.runtimeType == String) {
    return value.startsWith("K");
  }
  return key.startsWith('/');
  },);
  print(myInfo);
  
  // *********************************Merge_Methods********************************************
  // Map<int,String> fruit = {1: "Apple", 2: "Mango"};
  // Map<int,String> f1 = {3:"Orange", 4: "Avocado"};
  // Map<int,String> f2 = {5:"Cherry", 6: "Strawberry"};
  // Map<int,String> f3 = {}..addAll(f1)..addAll(fruit)..addAll(f2);
  // Map<int,String> f4 = {...fruit, ...f1, ...f2};

  // print(f3);
  // print(f4);
  // List<String> keys = ["name", "age", "email"];
  // List values = ["Hafiz Mohsin", 27, "muhammad786mohsin024@gmail.com"];

  // Map<String, dynamic> myInfo = Map.fromIterables(keys, values);
  // print(myInfo);
  }
