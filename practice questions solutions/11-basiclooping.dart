import 'dart:io';

void main() {
  while (true) {
    print('\nChoose a pattern to print:');
    print('1. Right-angled Triangle');
    print('2. Inverted Triangle');
    print('3. Rectangle');
    print('4. Exit');
    stdout.write('Enter your choice (1-4): ');
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        printRightAngledTriangle();
        break;
      case '2':
        printInvertedTriangle();
        break;
      case '3':
        printRectangle();
        break;
      case '4':
        print('Exiting...');
        return;
      default:
        print('Invalid choice. Please enter a valid option.');
    }
  }
}

void printRightAngledTriangle() {
  stdout.write('Enter the number of rows for the triangle: ');
  int? rows = int.tryParse(stdin.readLineSync()!);
  
  if (rows != null) {
    for (int i = 1; i <= rows; i++) {
      print('*' * i);
    }
  } else {
    print('Invalid input. Please enter a valid number.');
  }
}

void printInvertedTriangle() {
  stdout.write('Enter the number of rows for the inverted triangle: ');
  int? rows = int.tryParse(stdin.readLineSync()!);

  if (rows != null) {
    for (int i = rows; i >= 1; i--) {
      print('*' * i);
    }
  } else {
    print('Invalid input. Please enter a valid number.');
  }
}

void printRectangle() {
  stdout.write('Enter the number of rows: ');
  int? rows = int.tryParse(stdin.readLineSync()!);

  stdout.write('Enter the number of columns: ');
  int? columns = int.tryParse(stdin.readLineSync()!);

  if (rows != null && columns != null) {
    for (int i = 0; i < rows; i++) {
      print('*' * columns);
    }
  } else {
    print('Invalid input. Please enter valid numbers.');
  }
}
