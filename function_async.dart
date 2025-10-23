// a function which's
// Quality = data type
// Quantity = value


// where we need to delay like data fetching from database.

int main()
{
/*
Return_Type function_name async()
{

await Future.delay(Duration(milliseconds: 10000));
print("Hello world");

 }
 */
  demo();


  return 0;
}

Future demo() async{

  await Future.delayed(Duration(milliseconds: 10000));
  print("Hello World");
}