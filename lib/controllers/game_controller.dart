import 'package:get/get.dart';

class GameController extends GetxController {
  int score = 0;
  int questionNumber = 1;
  int rightAnswers = 0;
  int wrongAnswers = 0;

  void newGame() {
    score = 0;
    questionNumber = 1;
    rightAnswers = 0;
    wrongAnswers = 0;
  }
  //correcta: +10   incorrecta -5
}
