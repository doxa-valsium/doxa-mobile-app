import 'package:doxa_mobile_app/presentation/widgets/bottom_navigation_bar.dart';
import 'package:doxa_mobile_app/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class NavigatorScreen extends StatelessWidget {
  static const String route = 'navigator-screen';
  const NavigatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRouter(),
        JobsRouter(),
        MessagesRouter(),
        ProfileRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavBar(
          tabsRouter: tabsRouter,
        );
      },
    );
  }
}
