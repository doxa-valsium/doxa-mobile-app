import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:doxa_mobile_app/presentation/screens/counter_screen/counter_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/home_screen/home_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/jobs_screen/jobs_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/login_screen/login_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/messages_screen/messages_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/navigator_screen/navigator_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/custom_widgets_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/pulsing_button_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/theme_test_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/profile_screen/profile_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/signup_screen/signup_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: [
    AutoRoute(
      path: '/',
      page: PlaygroundScreen,
    ),
    AutoRoute(
      path: ThemeTestScreen.route,
      page: ThemeTestScreen,
    ),
    AutoRoute(
      path: PulsingButtonScreen.route,
      page: PulsingButtonScreen,
    ),
    AutoRoute(
      path: CustomWidgetsScreen.route,
      page: CustomWidgetsScreen,
    ),
    AutoRoute(
      path: NavigatorScreen.route,
      page: NavigatorScreen,
      children: [
        AutoRoute(
          path: HomeScreen.route,
          name: 'HomeRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: HomeScreen,
            ),
            AutoRoute(
              path: CounterScreen.route,
              page: CounterScreen,
            ),
          ],
        ),
        AutoRoute(
          path: JobsScreen.route,
          name: 'JobsRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: JobsScreen,
            ),
            AutoRoute(
              path: LoginScreen.route,
              page: LoginScreen,
            ),
          ],
        ),
        AutoRoute(
          path: MessagesScreen.route,
          name: 'MessagesRouter',
          page: MessagesScreen,
        ),
        AutoRoute(
          path: ProfileScreen.route,
          name: 'ProfileRouter',
          page: ProfileScreen,
        ),
      ],
    ),
  ],
)
class $AppRouter {}
