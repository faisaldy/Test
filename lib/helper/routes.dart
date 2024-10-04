
import 'package:bankjateng/view/dashboard.dart';
import 'package:get/get.dart';

import '../view/auth/signin.dart';
import '../view/auth/splash_page.dart';

class RouteHelper {
  static const String splashPage = "/splash-page";
  static const String signin = "/signin";
  static const String initial = "/";
 

  //
  static String getSplashPage() => splashPage;
  static String getSignIn() => signin;
  static String getInitial() => initial;
  

  //
  static List<GetPage> routes = [
    GetPage(name: splashPage, page: () => const SplashScreen()),
    GetPage(name: signin, page: () => const SignIn()),
    GetPage(name: initial, page: () => const Dashboard())
    
    
    ];
  
}
