import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  late TextEditingController emailController, passwordController;

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
  }

  bool pressedBool = true;
  var check1 = false;

  //password
  visiblepass() {
    pressedBool = !pressedBool;
    update();
  }

  //checktile
  changeCheck1() {
    check1 = !check1;
    update();
  }
}
