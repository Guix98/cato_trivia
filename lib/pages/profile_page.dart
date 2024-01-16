import 'package:cato_trivia/components/badges_container.dart';
import 'package:cato_trivia/components/bottom_nav_layout.dart';
import 'package:cato_trivia/components/double_circle.dart';
import 'package:cato_trivia/controllers/achievments_controller.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  final AchievmentsController _achievmentsController = Get.find();
  @override
  Widget build(BuildContext context) {
    return BottomNavLayout(
        bottomIndex: 4,
        title: '',
        child: Container(
          height: Get.height,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Positioned(left: -10, top: -20, child: DoubleCircle()),
              Positioned(bottom: 0, right: 0, child: DoubleCircle()),
              Positioned(
                top: Get.height * 0.05,
                child: BadgesContainer(
                  name: _achievmentsController.userName,
                ),
              ),
              CircleAvatar(
                child: SvgPicture.network(
                  'https://api.multiavatar.com/${_achievmentsController.userName}.svg',
                ),
                minRadius: 40,
                maxRadius: 40,
              ),
            ],
          ),
        ));
  }
}
