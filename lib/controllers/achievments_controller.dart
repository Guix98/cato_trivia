import 'package:get/get.dart';

class AchievmentsController extends GetxController {
  String userName = 'Guido';

  bool generalAchievment = false;
  bool advientoAchievment = false;
  bool cuaresmaAchievment = false;
  bool navidadAchievment = false;
  bool pascuaAchievment = false;

  String progressDescription = 'default';

  @override
  void onInit() {
    setProgressDescription(totalProgress());
    super.onInit();
  }

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
    totalProgress();
  }

  int totalProgress() {
    int progress = 0;
    if (generalAchievment) {
      progress += 20;
    }
    if (advientoAchievment) {
      progress += 20;
    }
    if (cuaresmaAchievment) {
      progress += 20;
    }
    if (navidadAchievment) {
      progress += 20;
    }
    if (pascuaAchievment) {
      progress += 20;
    }
    setProgressDescription(progress);
    return progress;
  }

  void setProgressDescription(int progress) {
    switch (progress) {
      case 0:
        progressDescription = 'Aún no juegas';
        break;
      case 20:
        progressDescription = 'Primer paso!';
        break;
      case 40:
        progressDescription = 'Vas muy bien!';
        break;
      case 60:
        progressDescription = 'Ya casi lo logras!';
        break;
      case 80:
        progressDescription = 'Sólo un poco más';
        break;
      case 100:
        progressDescription = 'Felicidades! completaste el juego';
        break;
    }
  }
}
