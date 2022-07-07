import 'package:get/get.dart';

class AchievmentsController extends GetxController {
  bool generalAchievment = false;
  bool advientoAchievment = false;
  bool cuaresmaAchievment = false;
  bool navidadAchievment = false;
  bool pascuaAchievment = false;

  void setAchievment(String category) {
    switch (category) {
      case 'general':
        generalAchievment = true;
        break;
      case 'adviento':
        advientoAchievment = true;
        break;
      case 'cuaresma':
        cuaresmaAchievment = true;
        break;
      case 'navidad':
        navidadAchievment = true;
        break;
      case 'pascua':
        pascuaAchievment = true;
        break;
    }
  }
}
