import 'dart:async';
import 'package:flutter/animation.dart';
import 'package:get/get.dart';

import '../helper/routes.dart';

class SplashController extends GetxController with GetTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;
  //0 = No Internet, 1 = WIFI Connected ,2 = Mobile Data Connected.
  var connectionType = 0.obs;

  @override
  void onInit() {
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..forward();
    animation = CurvedAnimation(parent: controller, curve: Curves.linear);
    Timer(const Duration(seconds: 4),
        () => Get.offAndToNamed(RouteHelper.getSignIn()));
    super.onInit();
  }
}
