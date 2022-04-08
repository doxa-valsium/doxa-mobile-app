import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:doxa_mobile_app/business_logic/app_bloc_observer.dart';
import 'package:doxa_mobile_app/environment_config.dart';
import 'package:doxa_mobile_app/services/logger.dart';
import 'package:flutter/widgets.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder, {Environment environment = Environment.production}) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  logger.v("Verbose log");

  logger.d("Debug log");

  logger.i("Info log");

  logger.w("Warning log");

  try {
    throw UnimplementedError("Not implemented");
  } catch(e) {
    logger.e("Error log", e, StackTrace.current);
  }

  logger.wtf("What a terrible failure log");

  EnvironmentConfig.init(environment);
  await runZonedGuarded(
    () async {
      await BlocOverrides.runZoned(
        () async {
          WidgetsFlutterBinding.ensureInitialized();
          runApp(await builder());
        },
        blocObserver: AppBlocObserver(),
      );
    },
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
