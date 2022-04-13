import 'package:doxa_mobile_app/presentation/screens/counter_screen/counter_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/login_screen/login_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground.dart';
import 'package:doxa_mobile_app/presentation/screens/signup_screen/signup_screen.dart';
import 'package:get/get.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/theme_test.dart';

class Routes {
  static List<GetPage> getRoutes = [
    GetPage(name: CounterScreen.route, page: () => const CounterScreen()),
    GetPage(name: LoginScreen.route, page: () => const LoginScreen()),
    GetPage(name: SignupScreen.route, page: () => const LoginScreen()),
    GetPage(name: SignupScreen.route, page: () => const Playground()),
    

    // Add Playground Routes Below
    GetPage(name: ThemeTest.route, page: () => const ThemeTest()),
  ];
}
