import 'dart:io';
Future<int> main() async {
  var pwd =  pwd_();

  var status = true;
  do{
    print("Select One..........");
    print("1. Create a folder.");
    print("2. Create a file.");
    print("3. List folder & file.");
    print("4. Delete Item.");
    print("5. Rename item.");
    print("6. Goto folder");
    print("7. Open text file");
    print("8. Append to a text file");
    print("9. Exit");

    int number = input_() as int;
    switch(number){
      case 1: await create_folder ( take_name());
    }

  }while(status);


// final f1 = File('note.txt');
// await f1.create(recursive: true);
//
// final exist = await f1.exists();
// print("exist ${exist}");
//renaming file

  //file delete
  // Get current working directory
  // var currentDir = Directory.current.path;

  return 0;
}

//take input
take_name()
{
  stdout.write('Enter name: '); // Prompt the user
  String? name = stdin.readLineSync(); // Read the input as a string
  return name;
}

//create_folder
Future<dynamic> create_folder(String my_folder)
async {
  // Create a Directory object
  final directory = Directory('${my_folder}');

  // Check if it exists first
  if (await directory.exists()) {
    print('Folder already exists: ${directory.path}');
  } else {
// Create the folder
    await directory.create();
    print('Folder created: ${directory.path}');
  }
}

//Take an integer input
int?  input_()
{
  stdout.write('Select: ');
  String? num = stdin.readLineSync(); // Read as a string first
  int? num1;
  if (num != null) {
    try {
      num1 = int.parse(num); // Convert the string to an integer
    } catch (e) {
      print('Invalid input. Please enter a valid number.');
    }
  }
  return num1;
}

// Get current working directory
Future <dynamic>pwd_()async
{
  var currentDir = Directory.current.path;
  // print(currentDir);
  return currentDir;
}


//
Future<dynamic> re_name(File f1, String new_name)
async{
  await f1.rename("${new_name}.txt");
}


//
Future<dynamic>  delete_file(File f1)
async {
  await f1.delete();
}
