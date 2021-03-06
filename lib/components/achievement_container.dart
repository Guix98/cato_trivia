import 'package:cato_trivia/components/user_achievement.dart';
import 'package:cato_trivia/components/white_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cato_trivia/theme/colors.dart' as colors;

class AchievementsContainer extends StatelessWidget {
  const AchievementsContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: colors.royalBlue),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          UserAchievement(
            name: 'Puntos',
            icon: Icons.star_border_rounded,
            value: 100,
          ),
          VerticalDivider(
            width: 0,
            thickness: 3,
            color: Colors.white30,
            indent: 15,
            endIndent: 15,
          ),
          UserAchievement(
            name: 'Ranking Global',
            icon: Icons.language,
            value: 152,
          ),
          VerticalDivider(
            width: 0,
            thickness: 3,
            color: Colors.white30,
            indent: 15,
            endIndent: 15,
          ),
          UserAchievement(
            name: 'Medallas',
            icon: Icons.star_border_rounded,
            value: 2,
          ),
        ],
      ),
    );
  }
}
