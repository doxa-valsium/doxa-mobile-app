import 'package:auto_route/auto_route.dart';
import 'package:doxa_mobile_app/presentation/screens/company_profile_sceen/company_profile_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/counter_screen/counter_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/home_screen/home_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/jobs_screen/jobs_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/messages_screen/chat_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/messages_screen/messages_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/navigator_screen/navigator_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/custom_widgets_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_view/manage_1x_2x_3x_images.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/pulsing_button_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/theme_test_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/profile_screen/profile_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/single_job_screen/single_job_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: [
    AutoRoute(
      path: PlaygroundScreen.route,
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
      path: ChatScreen.route,
      page: ChatScreen,
    ),
    AutoRoute(
      path: ChatScreen.route,
      page: ChatScreen,
    ),
    AutoRoute(
      path: ManageImagesScreen.route,
      page: ManageImagesScreen,
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
              initial: true,
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
              initial: true,
              page: JobsScreen,
            ),
            AutoRoute(
              path: SingleJobScreen.route,
              page: SingleJobScreen,
            ),
          ],
        ),
        AutoRoute(
          path: MessagesScreen.route,
          name: 'MessagesRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              initial: true,
              page: MessagesScreen,
            ),
          ],
        ),
        AutoRoute(
          path: ProfileScreen.route,
          name: 'ProfileRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              initial: true,
              page: ProfileScreen,
            ),
            AutoRoute(
              path: CompanyProfileScreen.route,
              page: CompanyProfileScreen,
            ),
          ],
        ),
      ],
    ),
  ],
)
class $AppRouter {}
