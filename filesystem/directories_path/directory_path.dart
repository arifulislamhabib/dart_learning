import 'dart:io';
import 'dart:vmservice_io';
Future<int> main() async
{

  //create a  Directory.
  // final dir = Directory('my_data/images');
  // await dir.create(recursive: true);


  // how to create a file in the present dir?
  // final file = await File ("${dir.path}/TextFile.txt");
  // await file.create(recursive: true);


  // How to delete a directory including files
  // await Directory("my_data").delete(recursive: true);


  // join path:
  final base = Directory.current.path;
  print("Current directory ${base}");
   final file_path = ("image_1.txt");
   print(file_path);

   final final_path = joinPathComponents(base, file_path);
   print(final_path);


   final content = '''
   
   This file is created using platformSeperator = "${Platform.pathSeparator}"
   
   - the paht was build by joining:
      - directry : $base
      -file name $file_path
      -result : $final_path
      
      this approch ensures any operating system.
   ''';

   final my_file = File("$final_path");
 await  my_file.writeAsString(content);

 final stat = await my_file.stat();
  print("file size ${stat.size} bytes");

  return 0 ;
}