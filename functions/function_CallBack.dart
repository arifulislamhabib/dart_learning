//when a function become another functon's peramater.

int main ()
{
  fun2(fun1(10, 15));
  return 0;
}

fun1(int a, int b)
{
  return a+b;
}

fun2(int summation)
{
  print("summation is ${summation}");
}