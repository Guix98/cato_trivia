import 'package:cato_trivia/components/bottom_nav_layout.dart';
import 'package:cato_trivia/components/white_card.dart';
import 'package:flutter/material.dart';

class QuestionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return BottomNavLayout(
        bottomIndex: 2,
        title: 'Arte y literatura',
        child: PageView(
          controller: controller,
          children: [
            WhiteCard(
                child: Center(
                    child: Column(
              children: [
                Image.asset('assets/begin_questions.png'),
                Text('Comenzar Test de: Arte y Literatura')
              ],
            ))),
            WhiteCard(child: Center(child: Text('Pregunta 1'))),
            WhiteCard(child: Center(child: Text('Pregunta 2'))),
            WhiteCard(child: Center(child: Text('Pregunta 3'))),
            WhiteCard(child: Center(child: Text('Pregunta 4'))),
            WhiteCard(child: Center(child: Text('Pregunta 5'))),
          ],
        ));
  }
}
