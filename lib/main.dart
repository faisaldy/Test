import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'helper/dependencies.dart' as dep;
import 'helper/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //initializeDateFormatting();
  await dep.init();
  Future.delayed(const Duration(milliseconds: 500), () {
    // Here you can write your code
    // Global globalController = Get.put(Global());
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteHelper.getSplashPage(),
      getPages: RouteHelper.routes,
      //home: SplashScreen()
    );
  }
}
