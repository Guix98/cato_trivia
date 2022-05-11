import 'package:cato_trivia/components/bottom_nav_layout.dart';
import 'package:cato_trivia/components/white_card.dart';
import 'package:cato_trivia/controllers/quizz_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cato_trivia/theme/colors.dart' as colors;

class QuestionsPage extends StatelessWidget {
  final QuizzController _quizzController =
      Get.put<QuizzController>(QuizzController());
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return BottomNavLayout(
        bottomIndex: 2,
        title: 'General',
        child: PageView(
          controller: controller,
          children: [
            WhiteCard(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/begin_questions.png'),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Comenzar Test de: \nGeneral',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.rubik(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                      SizedBox(height: 20),
                      QuizInfoWidget(),
                      SizedBox(height: 20),
                      QuizzDescription(),
                    ],
                  ),
                )
              ],
            )),
            WhiteCard(
                child: Column(
              children: [
                Text(_quizzController.generalList[0].pregunta),
                OutlinedButton(
                    onPressed: () {},
                    child: Text(_quizzController.generalList[0].respuesta)),
                OutlinedButton(
                    onPressed: () {},
                    child: Text(_quizzController.generalList[0].incorrecta1)),
                OutlinedButton(
                    onPressed: () {},
                    child: Text(_quizzController.generalList[0].incorrecta2)),
                OutlinedButton(
                    onPressed: () {},
                    child: Text(_quizzController.generalList[0].incorrecta3)),
              ],
            )),
            WhiteCard(child: Center(child: Text('Pregunta 2'))),
            WhiteCard(child: Center(child: Text('Pregunta 3'))),
            WhiteCard(child: Center(child: Text('Pregunta 4'))),
            WhiteCard(child: Center(child: Text('Pregunta 5'))),
          ],
        ));
  }
}

class QuizzDescription extends StatelessWidget {
  const QuizzDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          'Este es el primer quizz sobre Arte y literatura en la Iglesia Católica, las preguntas tienen una dificultad fácil y sumarán un total de 100 puntos si logras responder todas correctamente, buena suerte!',
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
