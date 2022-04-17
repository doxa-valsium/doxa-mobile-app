import 'package:doxa_mobile_app/presentation/screens/counter_screen/counter_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_screen.dart';
import 'package:doxa_mobile_app/routes/router.gr.dart';
import 'package:doxa_mobile_app/styles.dart';
import 'package:flutter/material.dart';

import '../logger.dart';
import '../services/environment_config_service.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter();
    return MaterialApp.router(
      // MaterialApp( )  => Navigator  .push
      debugShowCheckedModeBanner: false,
      theme: Styles.mainTheme,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      // home: EnvironmentConfigService.currentEnivironment == Environment.mock ? const Playground() : const CounterScreen(),
    );
  }
}
