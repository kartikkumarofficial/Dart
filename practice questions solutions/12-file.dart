import 'dart:io';
import 'dart:async';

void main() async {
  // Reading input from the user
  String? content;
  print('Enter what you want to write in file1:');
  content = stdin.readLineSync();

  if (content != null) {
    try {
      // Creating and writing to input.txt
      await File('input.txt').writeAsString(content);
      
      // Reading the content back from input.txt
      String fileContent = await File('input.txt').readAsString();
      print('Content in input.txt: $fileContent');
      
      // Copying content to another file output.txt
      await File('output.txt').writeAsString(fileContent);

      // Reading the content back from output.txt
      String file2Content = await File('output.txt').readAsString();
      print('Content in output.txt: $file2Content');

    } catch (e) {
      print('Error: $e');
    }
  } else {
    print('Null Value');
  }
}
