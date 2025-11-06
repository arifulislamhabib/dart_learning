void main(){

  int num1 = 10;
  int num2 = 0;


  try {
    final result = num1 / num2;
    print("Result ${result}");
  }on IntegerDivisionByZeroException{
    print("Ops unexpected exception");
  }
  catch (e) {
    print(e);
  } finally {
    //cleanig up.
    print("Finnaly competed division attemp, Finally part always runs");
  }

}