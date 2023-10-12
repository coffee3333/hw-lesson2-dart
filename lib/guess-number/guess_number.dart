import 'dart:io';
import 'dart:math';

class GuessNumber {
  int startGuess() {
    var rnd = Random();
    int tries = 0;
    int randomNumber = rnd.nextInt(100);
    print("I choosed number from 1 to 100");

    while (true) {
      print("Enter the number: ");
      int answer = int.parse(stdin.readLineSync()!);
      tries++;

      if (answer == randomNumber) {
        print("Congratulations you win, the number is $randomNumber");
        print("Atemts is $tries");
        return tries;
      } else if (answer > randomNumber) {
        print("Your number is greater");
      } else if (answer < randomNumber) {
        print("Your number is less");
      } else {
        print("wrong input");
      }
    }
  }
}
