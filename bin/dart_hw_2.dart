import "package:dart_hw_2/binary-searchers/binary_random_search.dart";
import 'package:dart_hw_2/binary-searchers/binary_search.dart';
import 'package:dart_hw_2/game/game.dart';
import 'package:dart_hw_2/guess-number/guess_number.dart';
import 'app/app.dart';

void main(List<String> arguments) {
  BinarySearch searchBinApp = BinarySearch();
  BinaryRandomSearch searchBinRandomApp = BinaryRandomSearch();
  GuessNumber guessApp = GuessNumber();
  GameApp gameApp = GameApp();
  App app = App(searchBinApp, searchBinRandomApp, guessApp, gameApp);

  app.runApp();
}
