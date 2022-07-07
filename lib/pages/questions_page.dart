import 'package:cato_trivia/components/bottom_nav_layout.dart';
import 'package:cato_trivia/components/white_card.dart';
import 'package:cato_trivia/controllers/achievments_controller.dart';
import 'package:cato_trivia/controllers/game_controller.dart';
import 'package:cato_trivia/controllers/quizz_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cato_trivia/theme/colors.dart' as colors;

import '../models/question.dart';

class QuestionsPage extends StatelessWidget {
  final String category;
  final QuizzController _quizzController =
      Get.put<QuizzController>(QuizzController());
  final GameController _gameController =
      Get.put<GameController>(GameController());

  QuestionsPage({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavLayout(
        bottomIndex: 2,
        hideNav: true,
        title: category,
        child: PageView(
          controller: _gameController.pageController,
          physics: NeverScrollableScrollPhysics(),
          children: buildQuestionCards(),
        ));
  }

  List<Widget> buildQuestionCards() {
    switch (category.toLowerCase()) {
      case 'general':
        _quizzController.loadGeneral();
        _gameController.category = 'general';
        break;
      case 'adviento':
        _quizzController.loadAdviento();
        _gameController.category = 'adviento';
        break;
      case 'cuaresma':
        _quizzController.loadCuaresma();
        _gameController.category = 'cuaresma';
        break;
      case 'navidad':
        _quizzController.loadNavidad();
        _gameController.category = 'navidad';
        break;
      case 'pascua':
        _quizzController.loadPascua();
        _gameController.category = 'pascua';
        break;

      default:
        break;
    }
    List<Widget> widgets = [];
    widgets.add(QuizInitPage());
    Widget body = Container();
    for (var i = 0; i < _quizzController.categoryQuestionList.length; i++) {
      final question = _quizzController.categoryQuestionList[i];
      switch (question.tipo) {
        case "M":
          body = QuestionMultiple(question: question);
          break;
        case "VF":
          body = QuestionTrueOrFalse(question: question);
          break;
      }
      widgets.add(WhiteCard(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              children: [
                Obx(() {
                  return CircleAvatar(
                    backgroundColor:
                        _gameController.questionResult.value == true
                            ? colors.green
                            : _gameController.questionResult.value == false
                                ? colors.red
                                : colors.pinkSalmon,
                    radius: 30,
                    child: _gameController.questionResult.value == true
                        ? Icon(Icons.done, color: colors.white)
                        : _gameController.questionResult.value == false
                            ? Icon(Icons.close, color: colors.white)
                            : Text(
                                (i + 1).toString(),
                                style: GoogleFonts.rubik(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 24,
                                    color: colors.white),
                              ),
                  );
                }),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "PREGUNTA ${i + 1} DE ${_quizzController.categoryQuestionList.length} ",
                  style: GoogleFonts.rubik(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: colors.grey2),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  question.pregunta,
                  style: GoogleFonts.rubik(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: colors.black),
                ),
                SizedBox(
                  height: 50,
                ),
                body
              ],
            ),
          ),
          SizedBox(
              height: 50,
              child: Center(
                child: Obx(() {
                  return AnimatedOpacity(
                    duration: Duration(milliseconds: 200),
                    opacity:
                        _gameController.questionResult.value != null ? 1 : 0,
                    child: MaterialButton(
                      height: 50,
                      minWidth: double.infinity,
                      color: colors.dullLavender,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(30))),
                      child: Text(
                          _quizzController.categoryQuestionList.length == i + 1
                              ? "Terminar"
                              : "Siguiente",
                          style: GoogleFonts.rubik(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: colors.white)),
                      onPressed: () {
                        if (_gameController.questionResult.value != null) {
                          _gameController.nextQuestion();
                        }
                      },
                    ),
                  );
                }),
              ))
        ],
      )));
    }

    widgets.add(FinishPage());
    return widgets;
  }
}

class FinishPage extends StatelessWidget {
  final GameController _gameController = Get.find();
  final QuizzController _quizzController = Get.find();
  final AchievmentsController _achievmentsController =
      Get.put<AchievmentsController>(AchievmentsController());
  FinishPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WhiteCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "TU RESULTADO ES",
            textAlign: TextAlign.center,
            style: GoogleFonts.rubik(
                fontWeight: FontWeight.w600, fontSize: 18, color: colors.black),
          ),
          SizedBox(
            height: 20,
          ),
          CircleAvatar(
            backgroundColor: colors.mintTulip,
            radius: 100,
            child: Text(
              "${_gameController.score}/${_quizzController.categoryQuestionList.length * 10}",
              style: GoogleFonts.rubik(
                  fontWeight: FontWeight.w600,
                  fontSize: 40,
                  color: colors.royalBlue),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Correctas: ${_gameController.rightAnswers}",
            textAlign: TextAlign.center,
            style: GoogleFonts.rubik(
                fontWeight: FontWeight.w600, fontSize: 14, color: colors.grey2),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Incorrectas: ${_gameController.wrongAnswers}",
            textAlign: TextAlign.center,
            style: GoogleFonts.rubik(
                fontWeight: FontWeight.w600, fontSize: 14, color: colors.grey2),
          ),
          SizedBox(
            height: 30,
          ),
          MaterialButton(
            height: 50,
            color: colors.royalBlue,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: Text("Volver",
                style: GoogleFonts.rubik(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: colors.white)),
            onPressed: () {
              if (_gameController.score == 100) {
                Get.defaultDialog(
                    title: 'Felicidades',
                    middleText:
                        'Desbloqueaste la insignia de la categoría ${_gameController.category}',
                    confirm: TextButton(
                        onPressed: (() {
                          Get.close(2);
                          _achievmentsController.setAchievment(
                              _gameController.category.toLowerCase());
                        }),
                        child: Text('Aceptar')));
              } else {
                Get.back();
              }
            },
          ),
        ],
      ),
    );
  }
}

class QuestionTrueOrFalse extends StatefulWidget {
  final Question question;

  QuestionTrueOrFalse({Key? key, required this.question}) : super(key: key);

  @override
  State<QuestionTrueOrFalse> createState() => _QuestionTrueOrFalseState();
}

class _QuestionTrueOrFalseState extends State<QuestionTrueOrFalse> {
  final GameController _gameController = Get.find();
  var _selected = -1;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      optionCard("FALSO", 0),
      SizedBox(
        height: 10,
      ),
      optionCard("VERDADERO", 1),
    ]);
  }

  Widget optionCard(String option, int number) {
    return GestureDetector(
      onTap: () {
        if (_gameController.questionResult.value == null) {
          setState(() {
            _selected = number;
          });
          _gameController.optionSelected.value = option;
          _gameController.verifyAnswer();
        }
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 100),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: option == "FALSO"
                ? colors.red.withOpacity(1)
                : colors.green.withOpacity(1),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: colors.hawkesBlue)),
        child: Text(
          option,
          style: GoogleFonts.rubik(
              fontWeight: FontWeight.w600, fontSize: 18, color: colors.black),
        ),
      ),
    );
  }
}

class QuestionMultiple extends StatefulWidget {
  final Question question;

  QuestionMultiple({Key? key, required this.question}) : super(key: key);

  @override
  State<QuestionMultiple> createState() => _QuestionMultipleState();
}

class _QuestionMultipleState extends State<QuestionMultiple> {
  final GameController _gameController = Get.find();
  var _selected = -1;
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: _getShuffleList());
  }

  List<Widget> _getShuffleList() {
    List<Widget> widgets = [];
    for (var i = 0; i < widget.question.opciones.length; i++) {
      widgets.add(optionCard(widget.question.opciones[i], i));
      widgets.add(SizedBox(
        height: 10,
      ));
    }
    return widgets;
  }

  Widget optionCard(String option, int number) {
    return GestureDetector(
      onTap: () {
        if (_gameController.questionResult.value == null) {
          setState(() {
            _selected = number;
          });
          _gameController.optionSelected.value = option;
          _gameController.verifyAnswer();
        }
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 100),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: _gameController.questionResult.value == false &&
                    widget.question.respuesta != option &&
                    _selected == number
                ? colors.red
                : _gameController.questionResult.value != null &&
                        widget.question.respuesta == option
                    ? colors.green
                    : _selected == number
                        ? colors.hawkesBlue
                        : colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: colors.hawkesBlue)),
        child: Text(
          option,
          style: GoogleFonts.rubik(
              fontWeight: FontWeight.w600, fontSize: 14, color: colors.black),
        ),
      ),
    );
  }
}

class QuizInitPage extends StatelessWidget {
  final GameController _gameController = Get.find();
  QuizInitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WhiteCard(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset('assets/begin_questions.png'),
        SizedBox(height: 20),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Comenzar Test de: \n${_gameController.category.capitalizeFirst}',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.rubik(
                      fontWeight: FontWeight.w600, fontSize: 18),
                ),
                SizedBox(height: 20),
                QuizInfoWidget(),
                SizedBox(height: 20),
                QuizzDescription(),
                SizedBox(height: 20),
                Center(
                  child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: colors.royalBlue,
                      child: Text(
                        "Empezar Juego",
                        style: GoogleFonts.rubik(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                      onPressed: () {
                        _gameController.newGame();
                      }),
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}

class QuizzDescription extends StatelessWidget {
  final GameController _gameController = Get.find();
  QuizzDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String description =
        'Este es un quizz sobre cultura general de la Iglesia Católica, las preguntas tienen una dificultad variable y sumarán un total de 100 puntos si logras responder todas correctamente, buena suerte!';
    if (_gameController.category != 'general') {
      description =
          'Este es un quizz sobre ${_gameController.category}, las preguntas tienen una dificultad variable y sumarán un total de 100 puntos si logras responder todas correctamente, buena suerte!';
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'DESCRIPCIÓN',
          textAlign: TextAlign.start,
          style: GoogleFonts.rubik(
              fontWeight: FontWeight.w500, fontSize: 14, color: colors.grey2),
        ),
        SizedBox(height: 15),
        Text(
          description,
          textAlign: TextAlign.justify,
          style: GoogleFonts.rubik(
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}

class QuizInfoWidget extends StatelessWidget {
  const QuizInfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: colors.grey5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            backgroundColor: colors.royalBlue,
            foregroundColor: Colors.white,
            child: Text('?'),
          ),
          Text(
            '10 Preguntas',
            style: GoogleFonts.rubik(fontWeight: FontWeight.w600, fontSize: 16),
          ),
          VerticalDivider(),
          Text(
            '100 Puntos en juego',
            style: GoogleFonts.rubik(fontWeight: FontWeight.w600, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
