import 'dart:io';

void main() {
  print("Enter first number: ");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Enter second number: ");
  double num2 = double.parse(stdin.readLineSync()!);

  print("Enter third number(Enter 0 if u want to perform operation on only 2 numbers): ");
  double num3 = double.parse(stdin.readLineSync()!);

  print("\nChoose an operation: ");
  print("1. Addition");
  print("2. Subtraction");
  print("3. Multiplication");
  print("4. Division");

  String? choice = stdin.readLineSync();

  switch (choice) {
    case '1':
      double result = num1 + num2 + num3;
      print("The result of addition is: $result");
      break;
    case '2':
      double result = num1 - num2 - num3;
      print("The result of subtraction is: $result");
      break;
    case '3':
      double result = num1 * num2 * num3;
      print("The result of multiplication is: $result");
      break;
    case '4':
      if (num2 != 0 && num3 != 0) {
        double result = num1 / num2 / num3;
        print("The result of division is: $result");
      } else {
        print("Error: Division by zero is not allowed.");
      }
      break;
    default:
      print("Invalid choice! Please select a valid operation.");
  }
}
