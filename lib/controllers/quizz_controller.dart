import 'package:cato_trivia/models/question.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/services.dart';

class QuizzController extends GetxController {
  // final _obj = ''.obs;
  // set obj(value) => this._obj.value = value;
  // get obj => this._obj.value;
  List<Question> questionsList = [];
  List<Question> categoryQuestionList = [];

  @override
  void onInit() {
    this.loadJsonData();
    super.onInit();
  }

  Future<String> loadJsonData() async {
    var jsonText = await rootBundle.loadString('assets/preguntas.json');
    questionsList = questionFromJson(jsonText);
    return 'success';
  }

  void loadGeneral() {
    categoryQuestionList = [];
    List<Question> generales = questionsList
        .where((question) => question.categoria == 'GENERAL')
        .toList();

    var randomPicker = List<int>.generate(generales.length, (i) => i + 1)
      ..shuffle();

    for (var i = 0; i < 10; i++) {
      categoryQuestionList.add(generales[randomPicker[i] - 1]);
    }
  }

  void loadAdviento() {
    categoryQuestionList = questionsList
        .where((question) => question.categoria == 'ADVIENTO')
        .toList();
  }

  void loadPascua() {
    categoryQuestionList = questionsList
        .where((question) => question.categoria == 'PASCUA')
        .toList();
  }

  void loadNavidad() {
    categoryQuestionList = questionsList
        .where((question) => question.categoria == 'NAVIDAD')
        .toList();
  }

  void loadCuaresma() {
    categoryQuestionList = questionsList
        .where((question) => question.categoria == 'CUARESMA')
        .toList();
  }
}
