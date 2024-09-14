void main(){
  List<String> names = ["Zohaib", 'Ali', "Arbab", "Kashif", "Hasan", "Yasir"];
  names.sort();
  // print(names);

  names.isEmpty;
  // names.clear();
  names.isNotEmpty;

  names.insert(2, "Mohsin");
  names.insertAll(3, ["Kashaf", "Samreen", 'Ambreen', 'Nazish', "Aliza"]);
  print(names);

  List<String> newNames = names.reversed.toList();
  print(newNames.indexed.toList().toString().replaceRange(1, 2, "{"));
  print(newNames.indexed.toList()[0].toString().replaceRange(0, 1, "{"));

}