import 'package:doxa_mobile_app/routes/router.gr.dart';
import 'package:doxa_mobile_app/styles.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/localization/l10n.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: Styles.mainTheme,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      localizationsDelegates: const [FormBuilderLocalizations.delegate],
    );
  }
}
