import 'dart:io';

void main() {
  List<int> numbers = [];

  while (true) {
    print('\nMenu:');
    print('1. Add a number');
    print('2. Remove a number');
    print('3. Search for a number');
    print('4. Display all numbers');
    print('5. Exit');
    stdout.write('Enter your choice (1-5): ');
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        addNumber(numbers);
        break;
      case '2':
        removeNumber(numbers);
        break;
      case '3':
        searchNumber(numbers);
        break;
      case '4':
        displayNumbers(numbers);
        break;
      case '5':
        print('Exiting...');
        return;
      default:
        print('Invalid choice. Please enter a valid option.');
    }
  }
}

void addNumber(List<int> numbers) {
  stdout.write('Enter a number to add: ');
  int? num = int.tryParse(stdin.readLineSync()!);
  if (num != null) {
    numbers.add(num);
    print('Number $num added.');
  } else {
    print('Invalid input. Please enter a valid number.');
  }
}

void removeNumber(List<int> numbers) {
  stdout.write('Enter a number to remove: ');
  int? num = int.tryParse(stdin.readLineSync()!);
  if (num != null) {
    if (numbers.contains(num)) {
      numbers.remove(num);
      print('Number $num removed.');
    } else {
      print('Number $num not found in the list.');
    }
  } else {
    print('Invalid input. Please enter a valid number.');
  }
}

void searchNumber(List<int> numbers) {
  stdout.write('Enter a number to search: ');
  int? num = int.tryParse(stdin.readLineSync()!);
  if (num != null) {
    if (numbers.contains(num)) {
      print('Number $num found in the list.');
    } else {
      print('Number $num not found in the list.');
    }
  } else {
    print('Invalid input. Please enter a valid number.');
  }
}

void displayNumbers(List<int> numbers) {
  if (numbers.isEmpty) {
    print('The list is empty.');
  } else {
    print('Numbers in the list: $numbers');
  }
}
