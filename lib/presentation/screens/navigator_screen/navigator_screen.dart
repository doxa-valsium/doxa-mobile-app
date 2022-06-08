import 'package:doxa_mobile_app/business_logic/blocs/profile_bloc/profile_bloc.dart';
import 'package:doxa_mobile_app/presentation/widgets/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:doxa_mobile_app/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigatorScreen extends StatelessWidget {
  static const String route = '';
  const NavigatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (context) => ProfileBloc(),
      child: AutoTabsScaffold(
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
      ),
    );
  }
}
