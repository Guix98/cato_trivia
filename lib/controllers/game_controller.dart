import 'package:cato_trivia/controllers/quizz_controller.dart';
import 'package:cato_trivia/models/question.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class GameController extends GetxController {
  QuizzController _quizzController = Get.find();
  PageController pageController = PageController();
  int score = 0;
  int rightAnswers = 0;
  int wrongAnswers = 0;
  var optionSelected = Rx<String>("");
  String category = '';
  var questionResult = Rx<bool?>(null);

  void newGame() {
    score = 0;
    rightAnswers = 0;
    wrongAnswers = 0;
    pageController.animateToPage(pageController.page!.toInt() + 1,
        duration: Duration(milliseconds: 300), curve: Curves.easeInSine);
  }

  void verifyAnswer() {
    var actualQuestion =
        _quizzController.categoryQuestionList[pageController.page!.toInt() - 1];
    if (actualQuestion.respuesta == optionSelected.value) {
      questionResult.value = true;
      rightAnswers++;
      score += 10;
    } else {
      questionResult.value = false;
      wrongAnswers++;
      score -= 5;
    }
  }

  void nextQuestion() async {
    questionResult.value = null;
    pageController.animateToPage(pageController.page!.toInt() + 1,
        duration: Duration(milliseconds: 300), curve: Curves.easeInSine);
  }

  //correcta: +10   incorrecta -5
}
