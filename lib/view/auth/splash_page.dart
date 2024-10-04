

import 'package:bankjateng/view/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/splash_controller.dart';
import '../../utils/dimension.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.maxFinite,
      height: double.maxFinite,
      color: Colors.white,
      // decoration: const BoxDecoration(
      //     image: DecorationImage(image: AssetImage(splash), fit: BoxFit.cover)),
      child: GetBuilder<SplashController>(builder: (controller) {
        return Container(
          width: Dimension.screenWidth,
          height: Dimension.screenHeight,
          color: Colors.white,
          child: Center(
              child: Image.asset(
            logobank,
            height: Dimension.height10 * 30,
            fit: BoxFit.cover,
          )),
        );
      }),
    ));
  }
}
