/*

 void main() {
  try {
    int result = 10 ~/ 1; // Integer division by zero
    print('Result: $result');
  }on
  catch (e) {
    print('An exception occurred: $e');
  } finally {
    print('This always runs, even if an exception occurs.');
  }
}
*/

// import 'dart:io';
//
// Future<void> main() async {
//   try {
//     final file = File('non_existent_file.txt');
//     String contents = await file.readAsString();
//     print(contents);
//   } on FileSystemException catch (e) {
//     print('File system error: ${e.message}');
//   } catch (e) {
//     print('Unexpected error: $e');
//   } finally {
//     print('File read attempt completed.');
//   }
// }

void misbehave() {
  try {
    dynamic foo = true;
    print(foo++); // Runtime error
  } catch (e) {
    print('misbehave() partially handled ${e.runtimeType}.');
    rethrow; // Allow callers to see the exception.
  }
}

void main() {
  try {
    misbehave();
  }
}
