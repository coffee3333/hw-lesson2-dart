import 'package:dart_hw_2/binary-searchers/binary_random_search.dart';
import 'package:dart_hw_2/guess-number/guess_number.dart';
import 'dart:io';

class GameApp {
  BinaryRandomSearch computerGuess = BinaryRandomSearch();
  GuessNumber userGuess = GuessNumber();

  void startGameApp() {
    int rounds = 0;
    int userScore = 0;
    int computerScore = 0;

    print("\n");
    print("Please enter quantity rounds:");
    int quantity = int.parse(stdin.readLineSync()!);

    while (rounds != quantity) {
      rounds++;
      print("Round #$rounds");
      print("\n");

      print("+++ Computer Guess +++");
      computerScore = computerScore + computerGuess.serachRandomBinary();
      print("Computer score is: $computerScore");
      print(">>>>>>>>>>>>>>>>>>>>>>>>>");
      print("\n");

      print("+++ User Guess +++");
      userScore = userScore = userGuess.startGuess();
      print("User score is: $userScore");
      print(">>>>>>>>>>>>>>>>>>>>>>>>>");
      print("\n");
    }

    if (computerScore < userScore) {
      print("----  Computer Win!!!  ----");
      print("Score: $computerScore");
    } else if (userScore < computerScore) {
      print("----  User Win!!!  ----");
      print("Score: $userScore");
    } else {
      print("---- Dead heat  ----");
    }
  }
}
