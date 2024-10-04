

import 'package:get/get.dart';

import '../controller/dashboard_controller.dart';
import '../controller/signin_controller.dart';
import '../controller/splash_controller.dart';

Future<void> init() async {
  //API Services
  // Get.lazyPut(() => ApiServices());

  //repo
  //Get.lazyPut(() => AuthRepo(apiServices: Get.find()));

  //controller
  Get.lazyPut<SplashController>(
    () => SplashController(),
  );
  Get.lazyPut<SignInController>(() => SignInController(), fenix: true);
  Get.lazyPut<DashboardController>(() => DashboardController(), fenix: true);
  // Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
  // Get.lazyPut<JadwalController>(() => JadwalController(), fenix: true);
  // Get.lazyPut<KelasController>(() => KelasController(), fenix: true);
  // Get.lazyPut<ProfileController>(() => ProfileController(), fenix: true);
  // Get.lazyPut<FormCheckinController>(() => FormCheckinController(),
  //     fenix: true);
}
