import 'package:cato_trivia/components/bottom_nav_layout.dart';
import 'package:cato_trivia/components/white_card.dart';
import 'package:cato_trivia/pages/questions_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:cato_trivia/theme/colors.dart' as colors;

import '../controllers/quizz_controller.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavLayout(
      bottomIndex: 2,
      title: 'Elige una categoría',
      child: WhiteCard(
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            CategoryContainer(
                icon: SvgPicture.asset('assets/svg/teology.svg'),
                name: 'General',
                questionsQuantity: 50,
                color: Color(0xff88E2CE)),
            CategoryContainer(
                icon: SvgPicture.asset('assets/svg/bible.svg'),
                name: 'Biblia',
                questionsQuantity: 50,
                color: colors.dullLavender),
            CategoryContainer(
                icon: SvgPicture.asset('assets/svg/history.svg'),
                name: 'Historia',
                questionsQuantity: 50,
                color: colors.pinkSalmon),
            CategoryContainer(
                icon: SvgPicture.asset('assets/svg/traditions.svg'),
                name: 'Costumbres',
                questionsQuantity: 50,
                color: Color(0xff7491F6)),
            CategoryContainer(
                icon: SvgPicture.asset('assets/svg/teology.svg'),
                name: 'Teología',
                questionsQuantity: 50,
                color: Color(0xff88E2CE)),
            CategoryContainer(
                icon: SvgPicture.asset('assets/svg/cross.svg'),
                name: 'Santos y personajes',
                questionsQuantity: 50,
                color: colors.pinkSalmon),
          ],
        ),
      ),
    );
  }
}

class CategoryContainer extends StatelessWidget {
  final Widget icon;
  final String name;
  final int questionsQuantity;
  final Color color;
  const CategoryContainer({
    Key? key,
    required this.icon,
    required this.name,
    required this.questionsQuantity,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => QuestionsPage());
      },
      child: Container(
        margin: EdgeInsets.all(10),
        height: 132,
        width: 156,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: color),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 48,
              width: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white24),
              child: Center(
                child: icon,
              ),
            ),
            SizedBox(height: 5),
            Text(
              name,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.white),
            ),
            SizedBox(height: 5),
            Text(
              '$questionsQuantity Preguntas',
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
