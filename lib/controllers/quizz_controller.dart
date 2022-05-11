import 'dart:math';

import 'package:cato_trivia/models/question.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:flutter/services.dart';

class QuizzController extends GetxController {
  // final _obj = ''.obs;
  // set obj(value) => this._obj.value = value;
  // get obj => this._obj.value;
  List<Question> questionsList = [];
  List<Question> generalList = [];
  List<Question> advientoList = [];
  List<Question> pascuaList = [];
  List<Question> navidadList = [];
  List<Question> cuaresmaList = [];

  @override
  void onInit() {
    this.loadJsonData();
    super.onInit();
  }

  Future<String> loadJsonData() async {
    var jsonText = await rootBundle.loadString('assets/preguntas.json');
    questionsList = questionFromJson(jsonText);
    loadGeneral();
    return 'success';
  }

  void loadGeneral() {
    generalList = [];
    List<Question> generales = questionsList
        .where((question) => question.categoria == 'GENERAL')
        .toList();

    var randomPicker = List<int>.generate(generales.length, (i) => i + 1)
      ..shuffle();

    for (var i = 0; i < 10; i++) {
      generalList.add(generales[randomPicker[i] - 1]);
    }
  }

  void loadAdviento() {
    advientoList = questionsList
        .where((question) => question.categoria == 'ADVIENTO')
        .toList();
  }

  void loadPascua() {
    advientoList = questionsList
        .where((question) => question.categoria == 'PASCUA')
        .toList();
  }

  void loadNavidad() {
    advientoList = questionsList
        .where((question) => question.categoria == 'NAVIDAD')
        .toList();
  }

  void loadCuaresma() {
    advientoList = questionsList
        .where((question) => question.categoria == 'CUARESMA')
        .toList();
  }
}
