import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:doxa_mobile_app/presentation/screens/counter_screen/counter_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/home_screen/home_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/jobs_screen/jobs_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/login_screen/login_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/messages_screen/messages_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/navigator_screen/navigator_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/profile_screen/profile_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/signup_screen/signup_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: [
    AutoRoute(
      path: '/',
      page: NavigatorScreen,
      children: [
        AutoRoute(
          path: 'home-screen',
          name: 'HomeRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: HomeScreen,
            ),
            AutoRoute(
              path: 'counter-screen',
              page: CounterScreen,
            ),
          ],
        ),
        AutoRoute(
          path: 'jobs-screen',
          name: 'JobsRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: JobsScreen,
            ),
            AutoRoute(
              path: 'login-screen',
              page: LoginScreen,
            ),
          ],
        ),
        AutoRoute(
          path: 'messages-screen',
          name: 'MessagesRouter',
          page: MessagesScreen,
        ),
        AutoRoute(
          path: 'profile-screen',
          name: 'ProfileRouter',
          page: ProfileScreen,
        ),
      ],
    ),
    AutoRoute(
      path: 'signup-screen',
      page: SignupScreen,
    ),
  ],
)
class $AppRouter {}
