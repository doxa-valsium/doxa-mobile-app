import 'package:doxa_mobile_app/presentation/routes.dart';
import 'package:doxa_mobile_app/presentation/routes2.dart';
import 'package:doxa_mobile_app/presentation/screens/counter_screen/counter_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground.dart';
import 'package:doxa_mobile_app/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../logger.dart';
import '../services/environment_config_service.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: mainTheme,
      home: EnvironmentConfigService.currentEnivironment == Environment.mock ? const Playground() : const CounterScreen(),
      getPages: Routes2.getRoutes,
      logWriterCallback: (String message, {bool isError = false}) {
        if (isError) {
          logger.e('[GETX] $message', 'GetX Error', StackTrace.current);
        } else {
          logger.i('[GETX] $message');
        }
      },
    );
  }
}
