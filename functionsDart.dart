int main()
{
  addTwo(10,20);
  //optional
  print("without passing value for C, the sum will be 160");
  addition(10, 50);
  print("if we pass the value 45,  for C then it will be: 105");
  addition(10, 50,45);


  //required function callig:

  info(name:"ariful islam habib", address: "faridpur", phone: "+8801714324828");
  return 0 ;
}

addTwo(int a, int  b)
{
  print("Summation: ${a+b}");
}

//optional

addition(double a, double b , [double c=100])
{
  print("Summation: ${a+b+c}");
}

// Required:
info({required String name, required String address, required String phone })
{
  print("Informations");
  print("name: ${name}");
  print("name: ${address}");
  print("name: ${phone}");

}