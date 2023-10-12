import 'dart:io';

class App {
  dynamic searchBinApp;
  dynamic searchBinRandomApp;
  dynamic guessApp;
  dynamic gameApp;

  App(this.searchBinApp, this.searchBinRandomApp, this.guessApp, this.gameApp);

  void runApp() {
    while (true) {
      print("*** WELCOME to my project ***");
      int answer = 0;
      while (true) {
        try {
          print(
              "Please choose the app (1) Binary Searcher (2) Binary Random Searcher (3) Guess number \n(4) Play 2 round game (0) Exit");
          answer = int.parse(stdin.readLineSync()!);
          break;
        } on FormatException {
          print("Please enter the number");
        }
      }
      if (answer == 1) {
        searchBinApp.searchNum();
      } else if (answer == 2) {
        searchBinRandomApp.serachRandomBinary();
      } else if (answer == 3) {
        guessApp.startGuess();
      } else if (answer == 4) {
        gameApp.startGameApp();
      } else {
        break;
      }
    }
  }
}
