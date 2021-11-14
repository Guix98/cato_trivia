import 'package:cato_trivia/components/badges_container.dart';
import 'package:cato_trivia/components/bottom_nav_layout.dart';
import 'package:cato_trivia/components/double_circle.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:cato_trivia/theme/colors.dart' as colors;

class ProfilePage extends StatelessWidget {
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
                  name: 'Guido Hernani',
                ),
              ),
              CircleAvatar(
                child: SvgPicture.network(
                  'https://api.multiavatar.com/Guix.svg',
                ),
                minRadius: 40,
                maxRadius: 40,
              ),
            ],
          ),
        ));
  }
}
