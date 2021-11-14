import 'package:cato_trivia/components/double_circle.dart';
import 'package:cato_trivia/components/extras_container.dart';
import 'package:cato_trivia/icons/leaderboard_icon.dart';
import 'package:cato_trivia/pages/categories_page.dart';
import 'package:cato_trivia/pages/profile_page.dart';
import 'package:cato_trivia/pages/web/saint_of_the_day.dart';
import 'package:cato_trivia/routes/routes.dart' as routes;
import 'package:cato_trivia/theme/colors.dart' as colors;
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.royalBlue,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: false,
            expandedHeight: 95,
            elevation: 0,
            title: Text('☀️ BUENOS DÍAS',
                style: GoogleFonts.rubik(
                    color: colors.pastelPink,
                    fontSize: 12,
                    fontWeight: FontWeight.w500)),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(0),
                child: AppBar(
                  title: Text('Guido Hernani',
                      style: GoogleFonts.rubik(fontWeight: FontWeight.w600)),
                  elevation: 0,
                  actions: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        child: Text('G'),
                        backgroundColor: Colors.red,
                      ),
                    )
                  ],
                )),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              width: double.infinity,
              child: Column(
                children: [
                  RecentQuizzContainer(
                    icon: '',
                  ),
                  FeaturedContainer(),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 15),
              padding: EdgeInsets.only(top: 25, left: 15, right: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'No olvides revisar:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ExtrasContainer(
                    title: 'Que santo se recuerda hoy?',
                    subtitle: 'Averigua con el calendario',
                    onClick: () {
                      Get.to(SaintOfTheDayWebPage(),
                          transition: Transition.zoom);
                    },
                  ),
                  ExtrasContainer(
                    title: 'Las misas del Vaticano',
                    subtitle: 'Visita la última misa en Youtube',
                    onClick: () {},
                  ),
                  ExtrasContainer(
                    title: 'Hoja Dominical',
                    subtitle: 'Descarga la hoja dominical de esta semana',
                    onClick: () {},
                  ),
                ],
              ),
            )
          ]))
        ],
      ),
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(icon: Icons.home),
          TabItem(icon: Icons.search),
          TabItem(icon: Icons.play_arrow_rounded),
          TabItem(icon: Icons.leaderboard),
          TabItem(icon: Icons.person_outline_rounded),
        ],
        initialActiveIndex: 0,
        backgroundColor: colors.royalBlue,
        elevation: 1,
        style: TabStyle.fixedCircle,
        onTap: (index) {
          switch (index) {
            case 1:
              print('Search View have to be here');
              break;
            case 2:
              Get.to(() => CategoriesPage(), transition: Transition.fadeIn);
              break;
            case 4:
              Get.to(() => ProfilePage(), transition: Transition.fadeIn);
              break;
            default:
              print(index);
          }
        },
      ),
    );
  }
}

class FeaturedContainer extends StatelessWidget {
  const FeaturedContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      clipBehavior: Clip.antiAlias,
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 8.0),
        height: 240,
        color: colors.dullLavender,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Positioned(
                right: 10,
                bottom: 10,
                child: Image.asset(
                  'assets/friend_woman.png',
                  width: 80,
                )),
            Positioned(
                left: 10,
                top: 10,
                child: Image.asset(
                  'assets/friend_man.png',
                  width: 70,
                )),
            Positioned(right: -70, top: -80, child: DoubleCircle()),
            Positioned(left: -70, bottom: -80, child: DoubleCircle()),
            Container(
              width: 250,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'DESTACADAS',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Revisa el scoreboard y compite por el mejor puntaje con tus amigos',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 150,
                    child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: LeaderboardIcon(
                          width: 30,
                        ),
                        label: Container(
                          height: 35,
                          child: Center(
                            child: Text(
                              'Scoreboard',
                              style: TextStyle(
                                  color: colors.royalBlue,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          elevation: 0,
                          primary: Colors.white,
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RecentQuizzContainer extends StatelessWidget {
  const RecentQuizzContainer({Key? key, required final String icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Color(0xFFFFCCD5)),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'RECENT QUIZ',
                style: TextStyle(
                    color: Color(0xff660012),
                    fontWeight: FontWeight.w500,
                    fontSize: 14),
              ),
              Row(
                children: [
                  Icon(
                    Icons.book,
                    color: Color(0xff660012),
                  ),
                  Text(
                    'La Biblia',
                    style: TextStyle(
                        color: Color(0xff660012),
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  )
                ],
              )
            ],
          ),
          Expanded(child: SizedBox()),
          CircularPercentIndicator(
            radius: 50.0,
            lineWidth: 10,
            percent: 0.56,
            center: Text('56%'),
            progressColor: colors.pinkSalmon,
            backgroundColor: Colors.transparent,
          )
        ],
      ),
    );
  }
}
