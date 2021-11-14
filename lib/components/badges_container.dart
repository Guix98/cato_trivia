import 'package:cato_trivia/components/achievement_container.dart';
import 'package:cato_trivia/components/white_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class BadgesContainer extends StatelessWidget {
  final String name;

  const BadgesContainer({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WhiteCard(
        width: Get.width - 30,
        child: Container(
          margin: EdgeInsets.only(top: Get.height * 0.08),
          child: Column(
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              AchievementsContainer(),
              Container(
                width: double.infinity,
                height: 280,
                child: GridView.count(
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 0,
                  crossAxisCount: 3,
                  children: [
                    SvgPicture.asset('assets/svg/badge_cross.svg'),
                    SvgPicture.asset('assets/svg/badge_locked.svg'),
                    SvgPicture.asset('assets/svg/badge_locked.svg'),
                    SvgPicture.asset('assets/svg/badge_locked.svg'),
                    SvgPicture.asset('assets/svg/badge_locked.svg'),
                    SvgPicture.asset('assets/svg/badge_locked.svg'),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
