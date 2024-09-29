import 'dart:io';

String leap(int yearnum) {
  if ((yearnum % 4 == 0 && yearnum % 100 != 0) || (yearnum % 400 == 0)) {
    return 'The year $yearnum is a leap year';
  } else {
    return 'The year $yearnum is not a leap year';
  }
}

void main() {
  print("Enter the year you want to check whether it is a leap year or not:");
  int? yearnum = int.tryParse(stdin.readLineSync()!);

  if (yearnum != null) {
    print(leap(yearnum));
  } else {
    print('Invalid input');
  }
}
