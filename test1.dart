int main() {

  //set
  var set1 = {"Dhaka", "Dinajpur", "rajshahi", "Rongpur", 5,5,5};
  for (var city in set1) {
    print(set1);
  }
  print(set1);

/*

  //List
  print("list practise");
  print("List");

  var cityList =[1,2,3,4,5,6,5,5,5,"Different"];
  print("- List can hold multiple same data");
  print("- List can hold mixed data when <int/String, double> is not used");
  print("- List is mutable");
  print("- List Operations");
  //add data
  var numberList = [1,2,3,4,5,6,7,8,9];
  var numberList2 = [1,2,3,4,5,6,7,8,9];

  print(numberList);
  numberList.add(10);
  print(numberList);

  //can muntiple data at once.
  numberList.addAll([11, 12, 13, 14,15]);
  print(numberList);
  //add two list
  var list3 = [11, 12, 13, 14,15];
  numberList2.addAll(list3);
  [print("list3 -> $numberList2")];

  //add single item in a specific point.
  numberList.insert(3, -3);
  print("number list -> $numberList");

  // add multiple item using index number

  numberList2.setAll(5,[-10,-11,-12,-13,-14] );
  print(numberList2);

  //remove
  numberList2.remove(-10);
  print(numberList2);
  //specifi point item remover
  numberList2.removeAt(1);
  print(numberList2);

  // sorting a list
  numberList2.sort();
  print(numberList2);
  //13. reverse
  List numberList2cpy = numberList2.reversed.toList();
  print(numberList2cpy);

  //14. search
  List fruits_list = ["apple", "malta", "banana", "lichy"];
  print(fruits_list.contains("apple"));

  // 15. item's index:
  print(fruits_list.indexOf("mango")); //returned -1;

  // 16. iterator
  for ( var items in fruits_list)
    {
      print(items);
    }

  // Map****
   fruits_list = ["apple", "malta", "banana", "lichy"];
  fruits_list.map((item)=> print(item)).toList();

  // forEach****
  fruits_list.forEach((item)=>print(item));

  */


  //Set
  Set set_city = {"faridpur","jessore", "Khulna", "madaripur", "vanga", "nagarkanda", "barishal"};
  print(set_city);
  //
  print("All the element's weight are same here");
  print("For this reason there is no index number");
  //Generics of sets:
  Set <int> set_number = {1,2,3,4,5,6,7,8,9};
  set_number.add(-11);
  print(set_number);

  //addAll
  set_number.addAll([-12,-12,-13,-14]);
  print(set_number);

  //Remove
  set_number.remove(-14);
  print(set_number);

  //sort


  // other operations
  var sett1 = {1, 2, 3};               // Literal
  var sett2 = Set<int>();              // Constructor
  var sett3 = Set.from([1, 2, 3]);     // From a List

  //set to list
  List list_sett = sett1.toList();
  print(list_sett);
  List sett4 = list_sett.reversed.toList();
  print(sett4);
  sett1 = Set.from(sett4);
  print(sett1);

  //search inside list
  print(sett1.contains(5));

  //loop
  for ( var item in sett1 )
    {
      print(item);
    }
//foreach
  sett1.forEach((item)=>print(item));
//map
  sett1.map((item)=>print(item)).toList();

  //
Set<int> a = {1,2,3};
Set<int> b = {4,5,6,};
print("Uniot ${a.union(b)}");

//intersection


  //map
  Map <String , String> phonebook = {"Faridpur":"7800", "kanaipur":"7801","tambulkhana":"78002"};
  print(phonebook["Faridpur"]);
  //add direct addition
  //.remove by just key;
  //.containsKey(key)
  //phonebook.containsValue()



  //Loop through map
  Map< String , int > students = {"arif":90, "Nipa":78, "Dipa":55};
  students.forEach((name, marks)
  {
    print("${name} have scored ${marks}");
  });


  //map<key, value> to list:
  //
  List <String> names = students.keys.toList();
  List <int> marks = students.values.toList();
  print(marks);
  return 0;
}
