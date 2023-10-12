import 'dart:math';
import 'dart:io';

class BinaryRandomSearch {
  int serachRandomBinary() {
    var rnd = Random();
    int guess;
    int low = 1;
    int high = 100;
    int tries = 0;

    print("Hello welcome to binary search");
    print("Please pick a number from 1 to 100, i'll try to guess");

    while (true) {
      if (low != high) {
        guess = low + rnd.nextInt(high - low);
      } else {
        print("Your number is $high");
        return tries;
      }

      print("I guess : $guess");

      tries++;

      print(
          "Please enter 'high' if it's higher or 'low' if it's lower or 'right' if it's right");
      String answer = stdin.readLineSync()!;

      if (answer == 'right') {
        print('Yeap, i was right, your number is $guess');
        print("Guessed with $tries steps");
        return tries;
      } else if (answer == 'low') {
        high = guess - 1;
      } else if (answer == 'high') {
        low = guess + 1;
      } else {
        print("Enter was not correct");
      }
    }
  }
}
