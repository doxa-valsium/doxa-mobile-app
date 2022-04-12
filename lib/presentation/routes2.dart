import 'package:doxa_mobile_app/presentation/screens/home_screen/home_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/home_screen2/home_screen2.dart';
import 'package:doxa_mobile_app/presentation/screens/jobs_screen/jobs_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/jobs_screen2/jobs_screen2.dart';
import 'package:doxa_mobile_app/presentation/screens/messages_screen/messages_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';

abstract class Routes2 {
  Route<dynamic> getRoute(RouteSettings settings);
}

class HomeRoute implements Routes2 {
  @override
  Route getRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.route:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case HomeScreen2.route:
        return MaterialPageRoute(builder: (_) => HomeScreen2());
      default:
        return MaterialPageRoute(
            builder: (_) => Container(
                  child: Center(
                    child: Text('${settings.name} does not exist'),
                  ),
                ));
    }
  }
}

class JobsRoute implements Routes2 {
  @override
  Route getRoute(RouteSettings settings) {
    switch (settings.name) {
      case JobsScreen.route:
        return MaterialPageRoute(builder: (_) => JobsScreen());
      case JobsScreen2.route:
        return MaterialPageRoute(builder: (_) => JobsScreen2());
      default:
        return MaterialPageRoute(
            builder: (_) => Container(
                  child: Center(
                    child: Text('${settings.name} does not exist'),
                  ),
                ));
    }
  }
}

class MessagesRoute implements Routes2 {
  @override
  Route getRoute(RouteSettings settings) {
    switch (settings.name) {
      case MessagesScreen.route:
        return MaterialPageRoute(builder: (_) => MessagesScreen());
      case JobsScreen2.route:
        return MaterialPageRoute(builder: (_) => JobsScreen2());
      default:
        return MaterialPageRoute(
            builder: (_) => Container(
                  child: Center(
                    child: Text('${settings.name} does not exist'),
                  ),
                ));
    }
  }
}

class ProfileRoute implements Routes2 {
  @override
  Route getRoute(RouteSettings settings) {
    switch (settings.name) {
      case ProfileScreen.route:
        return MaterialPageRoute(builder: (_) => ProfileScreen());
      case JobsScreen2.route:
        return MaterialPageRoute(builder: (_) => JobsScreen2());
      default:
        return MaterialPageRoute(
            builder: (_) => Container(
                  child: Center(
                    child: Text('${settings.name} does not exist'),
                  ),
                ));
    }
  }
}
