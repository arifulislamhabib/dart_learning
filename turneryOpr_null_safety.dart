int main()
{
  int a = 10;
  int b = 20;
  7 > 8 ? print("true"): print("false ");

  //Null safety
  int? number = null;
  print(number);
  //we have to defile wheather it is nullable or not using "int?"

  String? name;
  // name = "Ariful Islam";
  name = null;
  name ??= "No name";
  print(name ?? "N/A");


return 0;
}