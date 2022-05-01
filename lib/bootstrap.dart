import 'dart:async';
import 'dart:developer';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';

import 'package:bloc/bloc.dart';
import 'package:doxa_mobile_app/amplifyconfiguration.dart';
import 'package:doxa_mobile_app/business_logic/app_bloc_observer.dart';
import 'package:doxa_mobile_app/data/repositories/repository_provider.dart';
import 'package:doxa_mobile_app/models/ModelProvider.dart';
import 'package:doxa_mobile_app/services/app_config_service.dart';
import 'package:doxa_mobile_app/services/environment_config_service.dart';
import 'package:doxa_mobile_app/logger.dart';
import 'package:flutter/widgets.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder, {Environment environment = Environment.production}) async {
  // logger.v("Verbose log");

  // logger.d("Debug log");

  // logger.i("Info log");

  // logger.w("Warning log");

  // try {
  //   throw UnimplementedError("Not implemented");
  // } catch (e) {
  //   logger.e("Error log", e, StackTrace.current);
  // }

  // logger.wtf("What a terrible failure log");

  FlutterError.onError = (details) {
    logger.e(details.summary, details.exceptionAsString(), details.stack);
  };
  await runZonedGuarded(
    () async {
      await BlocOverrides.runZoned(
        () async {
          WidgetsFlutterBinding.ensureInitialized();
          EnvironmentConfigService.init(environment);
          await AppConfigService.instance.init();
          RepositoryProvider.init();
          runApp(await builder());
        },
        blocObserver: AppBlocObserver(),
      );
    },
    (error, stackTrace) => logger.e('Exception', error, stackTrace),
  );
  await _configureAmplify();
}

Future<void> _configureAmplify() async {
  try {
    // Add the following line to add Auth plugin to your app.
    AmplifyAuthCognito authPlugin = AmplifyAuthCognito();
    AmplifyDataStore datastorePlugin = AmplifyDataStore(modelProvider: ModelProvider.instance);
    await Amplify.addPlugins([authPlugin, datastorePlugin]);

    // call Amplify.configure to use the initialized categories in your app
    await Amplify.configure(amplifyconfig);
  } on Exception catch (e) {
    log('An error occurred configuring Amplify: $e');
  }
}
