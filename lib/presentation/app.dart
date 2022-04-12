import 'package:doxa_mobile_app/business_logic/cubit/bottom_nav_bar_cubit.dart';
import 'package:doxa_mobile_app/presentation/routes.dart';
import 'package:doxa_mobile_app/presentation/routes2.dart';
import 'package:doxa_mobile_app/presentation/screens/counter_screen/counter_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/home_screen/home_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/navigator_screen/navigator_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../logger.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavBarCubit(),
      child: GetMaterialApp(
        theme: ThemeData(
          appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
          colorScheme: ColorScheme.fromSwatch(
            accentColor: const Color(0xFF13B9FF),
          ),
        ),
        home: NavigatorScreen(),
        getPages: Routes2.getRoutes,
        logWriterCallback: (String message, {bool isError = false}) {
          if (isError) {
            logger.e('[GETX] $message', 'GetX Error', StackTrace.current);
          } else {
            logger.i('[GETX] ');
          }
        },
      ),
    );
  }
}
