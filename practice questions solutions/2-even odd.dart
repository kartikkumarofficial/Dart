import 'dart:io';

void main() {
  int? num;
  print("Enter number: ");
  num = int.tryParse(stdin.readLineSync()!);
  
  if (num != null) {
    if (num % 2 == 0) {
      print("$num is Even");
    } else if (num % 2 != 0) {
      print("$num is Odd");
    } else {
      print("Invalid input");
    }
  }
}