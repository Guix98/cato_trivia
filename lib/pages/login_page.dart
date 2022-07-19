import 'package:cato_trivia/components/bottom_nav_layout.dart';
import 'package:cato_trivia/components/white_card.dart';
import 'package:cato_trivia/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  final LoginController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return BottomNavLayout(
        bottomIndex: 0,
        title: 'Cato Trivia',
        hideNav: true,
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: WhiteCard(
              height: Get.height * 0.5,
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Form(
                  key: controller.loginFormKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        controller: controller.emailController,
                        decoration: const InputDecoration(
                            labelText: 'Tu nombre para jugar:'),
                        validator: controller.validator,
                      ),
                      SizedBox(height: Get.height * 0.1),
                      ElevatedButton(
                        child: Text('Ingresar'),
                        onPressed: controller.login,
                        style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
