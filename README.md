# File
🗂️ ##A–Z of Files in Dart
📘 A. Importing the Required Library

All file operations in Dart use the dart:io library (for command-line and server apps).

import 'dart:io';


⚠️ Note: dart:io is not available in Flutter web — only for Dart CLI, Flutter mobile, and desktop apps.

📗 B. Creating a File
void main() async {
  var file = File('example.txt');

  // Create file if it doesn't exist
  if (!(await file.exists())) {
    await file.create();
    print('File created.');
  } else {
    print('File already exists.');
  }
}


File.create() — creates a new file.

recursive: true — can create directories if needed.

await file.create(recursive: true);

📘 C. Writing to a File

There are multiple ways to write text or data.

1️⃣ Write Text (Overwrites existing content)
await file.writeAsString('Hello, Dart!');

2️⃣ Append Text
await file.writeAsString('\nAppended line', mode: FileMode.append);

3️⃣ Write Raw Bytes
await file.writeAsBytes([68, 97, 114, 116]); // Writes 'Dart'

📙 D. Reading from a File
1️⃣ Read as String
String contents = await file.readAsString();
print(contents);

2️⃣ Read Line by Line
Stream<String> lines = file.openRead()
  .transform(utf8.decoder)
  .transform(LineSplitter());

await for (var line in lines) {
  print('Line: $line');
}

3️⃣ Read as Bytes
List<int> bytes = await file.readAsBytes();
print(bytes);

📒 E. Checking File Existence
bool exists = await file.exists();
print(exists ? 'File exists' : 'File not found');

📔 F. Deleting a File
await file.delete();
print('File deleted.');


Delete recursively (useful for directories):

await Directory('myDir').delete(recursive: true);

📕 G. Renaming or Moving a File
await file.rename('new_name.txt');


You can also move files between directories by specifying a new path.

📘 H. Copying a File
await file.copy('copy_example.txt');

📗 I. Getting File Information (Stats)
FileStat stat = await file.stat();
print('Size: ${stat.size} bytes');
print('Modified: ${stat.modified}');
print('Type: ${stat.type}');

📙 J. Listing Files in a Directory
var dir = Directory('my_folder');
await for (var entity in dir.list(recursive: false)) {
  print(entity.path);
}


You can filter using entity is File or entity is Directory.

📒 K. Creating and Managing Directories
var dir = Directory('my_folder');

// Create if not exists
if (!(await dir.exists())) {
  await dir.create(recursive: true);
  print('Directory created.');
}


Get temporary or current directories:

print(Directory.systemTemp.path);
print(Directory.current.path);

📔 L. Working with Paths (Using path Package)

For cross-platform file paths, use the path package:

dependencies:
  path: ^1.9.0


Example:

import 'package:path/path.dart' as p;

void main() {
  var fullPath = p.join('folder', 'subfolder', 'file.txt');
  print(fullPath); // Works on all OSs
}

📕 M. Handling Errors Safely

Always wrap I/O in try-catch:

try {
  var content = await File('missing.txt').readAsString();
  print(content);
} catch (e) {
  print('Error: $e');
}

📘 N. File Streams (Advanced)

For large files, use streams instead of reading all at once.

var input = File('big.txt').openRead();
await for (var data in input.transform(utf8.decoder)) {
  print(data);
}

📗 O. File Permissions (Platform Specific)

On some systems, you can read or set permissions:

FileStat stat = await File('example.txt').stat();
print('Mode: ${stat.mode}');


Note: Dart doesn’t provide direct APIs to modify permissions — use platform tools or plugins (e.g., process_run).

📙 P. Temporary Files
var tempDir = Directory.systemTemp.createTempSync();
var tempFile = File('${tempDir.path}/temp.txt');
await tempFile.writeAsString('Temp data');
print(tempFile.path);

📒 Q. Working with JSON Files
import 'dart:convert';
import 'dart:io';

void main() async {
  var file = File('data.json');
  var jsonData = jsonDecode(await file.readAsString());

  print(jsonData['name']);

  jsonData['name'] = 'Updated Name';
  await file.writeAsString(jsonEncode(jsonData));
}

📔 R. Binary File Handling (e.g., images)
var imageBytes = await File('photo.jpg').readAsBytes();
await File('copy.jpg').writeAsBytes(imageBytes);

📕 S. File Watching (Monitor Changes)
var file = File('example.txt');
file.watch().listen((event) {
  print('Change type: ${event.type}');
  print('Changed path: ${event.path}');
});

📘 T. Useful Tips

Always use async/await to avoid blocking.

Use FileMode.append for logs.

Prefer Directory.systemTemp for temporary files.

For Flutter apps, use path_provider for safe file locations.

📗 U–Z: Summary & Best Practices
Concept	Description	Example
U – Use Streams	Handle large files efficiently	file.openRead()
V – Validate Paths	Check if paths exist before use	await file.exists()
W – Write Safely	Avoid overwriting critical data	if (!exists) create()
X – XML/JSON Handling	Use xml / dart:convert	jsonDecode()
Y – Yield Async Ops	Always await I/O	await file.readAsString()
Z – Zero Errors	Use try-catch	try { ... } catch (e) {}
