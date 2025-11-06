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
  await file.writeAsString('Hello world\n');
  print('Wrote hello world to the the file: ${file.path}');


  //append text to the file:

  await file.writeAsString("appended new line1.\n", mode: FileMode.append);


  final content = await file.readAsString();
  print(content);

  return 0 ;
}