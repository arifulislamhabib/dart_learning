Future<int> main () async {
  await Future.delayed(Duration(seconds: 10));
  print("Hello World");

  return 0;
}


//The function where we have to keep the process waited, we have to use await there.
//at the same time we have to use async there.
// await means you have to wait ultill ....times

// async means you have to stay connected. Any update might come anytime.


