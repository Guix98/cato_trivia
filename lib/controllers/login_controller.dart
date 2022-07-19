import 'package:cato_trivia/controllers/achievments_controller.dart';
import 'package:cato_trivia/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final AchievmentsController _achievmentsController = Get.find();
  final loginFormKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void onInit() {
    // Simulating obtaining the user name from some local storage
    emailController.text = '';
    super.onInit();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  String? validator(String? value) {
    if (value!.isEmpty) {
      return 'Please this field must be filled';
    }
    return null;
  }

  void login() {
    _achievmentsController.userName = emailController.text;
    Get.offAll(HomePage());
  }

  // Api Simulation

}
