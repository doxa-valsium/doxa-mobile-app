import 'package:doxa_mobile_app/presentation/screens/home_screen/home_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/home_screen2/home_screen2.dart';
import 'package:doxa_mobile_app/presentation/screens/jobs_screen/jobs_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/jobs_screen2/jobs_screen2.dart';
import 'package:doxa_mobile_app/presentation/screens/messages_screen/messages_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/navigator_screen/navigator_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class Routes2 {
  static List<GetPage> getRoutes = [
    GetPage(name: NavigatorScreen.route, page: () => const NavigatorScreen()),
    GetPage(name: HomeScreen.route, page: () => const HomeScreen()),
    GetPage(name: HomeScreen2.route, page: () => HomeScreen2()),
    GetPage(name: JobsScreen.route, page: () => JobsScreen()),
    GetPage(name: JobsScreen2.route, page: () => JobsScreen2()),
    GetPage(name: MessagesScreen.route, page: () => MessagesScreen()),
    GetPage(name: ProfileScreen.route, page: () => JobsScreen()),
  ];

  Route<dynamic> getRoute(RouteSettings settings);
}

class HomeRoute implements Routes2 {
  @override
  Route getRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.route:
        return GetPageRoute(
          routeName: HomeScreen.route,
          page: () => HomeScreen(),
        ); //MaterialPageRoute(builder: (_) => HomeScreen());
      case HomeScreen2.route:
        return GetPageRoute(
          routeName: HomeScreen2.route,
          page: () => HomeScreen2(),
        ); //MaterialPageRoute(builder: (_) => HomeScreen2());
      default:
        return GetPageRoute(
          page: () => Container(
            child: Center(
              child: Text('${settings.name} does not exist'),
            ),
          ),
        );
      // return MaterialPageRoute(
      //     builder: (_) => Container(
      //           child: Center(
      //             child: Text('${settings.name} does not exist'),
      //           ),
      //         ));
    }
  }
}

class JobsRoute implements Routes2 {
  @override
  Route getRoute(RouteSettings settings) {
    switch (settings.name) {
      case JobsScreen.route:
        return GetPageRoute(
          routeName: JobsScreen.route,
          page: () => JobsScreen(),
        ); //MaterialPageRoute(builder: (_) => JobsScreen());
      case JobsScreen2.route:
        return GetPageRoute(
          routeName: JobsScreen2.route,
          page: () => JobsScreen2(),
        ); //MaterialPageRoute(builder: (_) => JobsScreen2());
      default:
        return GetPageRoute(
          page: () => Container(
            child: Center(
              child: Text('${settings.name} does not exist'),
            ),
          ),
        );
      // return MaterialPageRoute(
      //     builder: (_) => Container(
      //           child: Center(
      //             child: Text('${settings.name} does not exist'),
      //           ),
      //         ));
    }
  }
}

class MessagesRoute implements Routes2 {
  @override
  Route getRoute(RouteSettings settings) {
    switch (settings.name) {
      case MessagesScreen.route:
        return GetPageRoute(
          routeName: MessagesScreen.route,
          page: () => MessagesScreen(),
        ); // MaterialPageRoute(builder: (_) => MessagesScreen());
      default:
        return GetPageRoute(
          page: () => Container(
            child: Center(
              child: Text('${settings.name} does not exist'),
            ),
          ),
        );
      // return MaterialPageRoute(
      //     builder: (_) => Container(
      //           child: Center(
      //             child: Text('${settings.name} does not exist'),
      //           ),
      //         ));
    }
  }
}

class ProfileRoute implements Routes2 {
  @override
  Route getRoute(RouteSettings settings) {
    switch (settings.name) {
      case ProfileScreen.route:
        return GetPageRoute(
          routeName: ProfileScreen.route,
          page: () => ProfileScreen(),
        ); //MaterialPageRoute(builder: (_) => ProfileScreen());
      default:
        return GetPageRoute(
          page: () => Container(
            child: Center(
              child: Text('${settings.name} does not exist'),
            ),
          ),
        );
      // return MaterialPageRoute(
      //     builder: (_) => Container(
      //           child: Center(
      //             child: Text('${settings.name} does not exist'),
      //           ),
      //         ));
    }
  }
}
