import 'package:cato_trivia/controllers/achievments_controller.dart';
import 'package:cato_trivia/controllers/login_controller.dart';
import 'package:cato_trivia/controllers/quizz_controller.dart';
import 'package:cato_trivia/routes/routes.dart' as routes;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'theme/colors.dart' as colors;

void main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    Get.put<QuizzController>(QuizzController());
    Get.put<AchievmentsController>(AchievmentsController());
    Get.put<LoginController>(LoginController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Catolic Trivia',
      debugShowCheckedModeBanner: false,
      initialRoute: routes.login,
      theme: ThemeData(
        textTheme: GoogleFonts.rubikTextTheme(),
        primaryColor: colors.royalBlue,
        primarySwatch: MaterialColor(4285160160, {
          50: Color(0xffeceafb),
          100: Color(0xffd8d4f7),
          200: Color(0xffb1a9ef),
          300: Color(0xff8b7ee7),
          400: Color(0xff6453df),
          500: Color(0xff3d28d7),
          600: Color(0xff3120ac),
          700: Color(0xff251881),
          800: Color(0xff181056),
          900: Color(0xff0c082b)
        }),
      ),
      defaultTransition: Transition.fade,
      getPages: routes.routes,
    );
  }
}
