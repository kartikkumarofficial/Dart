import 'dart:io';
import 'dart:math';

void main() {
  print('Guess the number (0-100):');
  var random = Random();
  int randomNumber = random.nextInt(101);

  while (true) {
    int? userGuess;
    print('Enter number:');
    userGuess = int.tryParse(stdin.readLineSync()!);
    
    if (userGuess == null) {
      print("Invalid input, please enter a valid number.");
      continue;
    }

    if (userGuess < randomNumber) {
      print("Choose a higher number");
    } else if (userGuess > randomNumber) {
      print("Choose a lower number");
    } else {
      print("Congratulations! You've guessed the right number: $randomNumber");
      break;
    }
  }
}
