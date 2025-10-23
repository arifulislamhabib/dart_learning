import 'dart:io';

Future main() async {
  final file = File("file.txt");
  await file.writeAsString("Hello World");
  await file.create(recursive: true);

  await file.writeAsString('\nAppended line', mode: FileMode.append);

//file reading;
  final content = await file.readAsString();
  print(content);

}