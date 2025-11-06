import 'dart:io';
Future<int> main()async
{
  // create files path.
  final file = File('Hello.txt');

  //check current directory & path.

  //this will show name of the value keep in the  *file* variable.
  print('working with file:${file.path}');

  // It will show upto this point full path
  print('Current Directory: ${Directory.current.path}');


  //write in the file
  await file.writeAsString('Hello world');
  print('Wrote hello world to the the file: ${file.path}');


  return 0 ;
}