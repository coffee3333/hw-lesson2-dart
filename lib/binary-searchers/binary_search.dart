import 'dart:io';

class BinarySearch {
  void searchNum() {
    int low = 1;
    int high = 100;
    int tries = 0;

    print("Hello welcome to binary search");
    print("Please pick a number from 1 to 100, i'll try to guess");

    while (true) {
      int guess = (low + high) ~/ 2;
      print("i guess : $guess");

      tries++;

      print(
          "Please enter 'high' if it's higher or 'low' if it's lower or 'right' if it's right");
      String answer = stdin.readLineSync()!;

      if (answer == 'right') {
        print('Yeap, i was right, your number is $guess');
        print("Guessed with $tries steps");
        break;
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
