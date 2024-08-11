void main(){
  Map userInfo = {
    "id": "abc12345",
    // "name": "Mohsin",
    "age": 27,
    "city": "Karachi",
  };
  print(userInfo.keys);
  print(userInfo.values);
  // userInfo["name"] = "Hafiz Mohsin"; // wrong method because we don't know if key exists or not?
  userInfo.putIfAbsent("name", ()=> "Hassan");
  print(userInfo);
  Map myInfo = {
    "contact": 03433440700,
    "cnic": 4210149356474
  };
  myInfo.addEntries(userInfo.entries);
  print(myInfo);
  }
