import 'package:cato_trivia/pages/categories_page.dart';
import 'package:cato_trivia/pages/homepage.dart';
import 'package:cato_trivia/pages/profile_page.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:cato_trivia/theme/colors.dart' as colors;
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavLayout extends StatelessWidget {
  final Widget child;
  final int bottomIndex;
  final String title;
  final bool hideNav;
  const BottomNavLayout(
      {Key? key,
      required this.bottomIndex,
      required this.title,
      this.hideNav = false,
      required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.royalBlue,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title:
            Text(title, style: GoogleFonts.rubik(fontWeight: FontWeight.w600)),
      ),
      body: child,
      bottomNavigationBar: hideNav
          ? SizedBox(
              height: 1,
            )
          : ConvexAppBar(
              items: [
                TabItem(icon: Icons.home),
                TabItem(icon: Icons.search),
                TabItem(icon: Icons.play_arrow_rounded),
                TabItem(icon: Icons.leaderboard),
                TabItem(icon: Icons.person_outline_rounded),
              ],
              initialActiveIndex: bottomIndex,
              backgroundColor: colors.royalBlue,
              elevation: 1,
              style: TabStyle.fixedCircle,
              onTap: (index) {
                switch (index) {
                  case 0:
                    Get.offAll(HomePage(), transition: Transition.fadeIn);
                    break;
                  case 2:
                    Get.offAll(() => CategoriesPage());
                    break;
                  case 4:
                    Get.offAll(() => ProfilePage());
                    break;
                  default:
                    print(index);
                }
              },
            ),
    );
  }
}
