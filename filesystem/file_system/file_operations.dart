import 'dart:io';
//file.create()
Future<int> main () async
{

  //in this case  if there is no parent directory then it will create directory.
    // Define the file path (deep inside folders)
    final file = File('myapp/data/users/2025/profile3.txt');
    // This will create all missing folders + the file
    await file.create(recursive: true);

    // Now write something to the file
    await file.writeAsString('User data saved on November 06, 2025');

    print('File created and written successfully!');

    //rename a file
    //final file_2 =await  file.rename('myapp/data/users/2025/user.txt');
    final file_delete = File('myapp/data/users/2025/profile1.txt');
    //file delete:
    // await file_delete.delete();

    final exist = await file_delete.exists();
    print("file: ${exist} ");

  return 0;
}