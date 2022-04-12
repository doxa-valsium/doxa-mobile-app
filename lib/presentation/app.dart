import 'package:doxa_mobile_app/presentation/routes.dart';
import 'package:doxa_mobile_app/presentation/screens/counter_screen/counter_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/themeTesting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../logger.dart';
import '../services/environment_config_service.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        colorScheme: ColorScheme(
          // accentColor: Color(0xFF13B9FF),
          brightness: Brightness.light,
          primary: Color(0xFF0061FE),
          primaryContainer: Color(0xFF0061FE),
          secondary: Color(0xFFDFEBFF),
          secondaryContainer: Color(0xFFCFE0FF),
          error: Color(0xFFFFEAEA),
          surface: Color(0xFFE7E7E7),
          background: Color(0xFFFFFFFF),
          onPrimary: Color(0xFFFFFFFF),
          onSecondary: Color(0xFF0061FE),
          onError: Color(0xFFD53030),
          onSurface: Color(0xFFB5B5B5),
          onBackground: Color(0xFF081C43),
          tertiary: Color(0xFFD9FFE1),
          onTertiary: Color(0xFF00CB2D),
        ),

        textTheme: TextTheme(
          headline1: GoogleFonts.poppins(
            fontSize: 96,
            fontWeight: FontWeight.w300,
            letterSpacing: -1.5,
          ),
          headline2: GoogleFonts.poppins(
            fontSize: 60,
            fontWeight: FontWeight.w300,
            letterSpacing: -0.5,
            color: Color(0xFF0061FE),
          ),
          headline3: GoogleFonts.poppins(
            fontSize: 48,
            fontWeight: FontWeight.w400,
            letterSpacing: 0,
          ),
          headline4: GoogleFonts.poppins(
            fontSize: 34,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.25,
          ),
          headline5: GoogleFonts.poppins(
            fontSize: 28,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.18,
          ),
          headline6: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.15,
          ),
          subtitle1: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.15,
          ),
          subtitle2: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.1,
          ),
          bodyText1: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.5,
          ),
          bodyText2: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.25,
          ),
          caption: GoogleFonts.poppins(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.4,
          ),
          overline: GoogleFonts.poppins(
              fontSize: 9,
              fontWeight: FontWeight.w300,
              letterSpacing: 0.3,
            ),
        )

      ),
      home: EnvironmentConfigService.currentEnivironment == Environment.mock ? const Playground() : const CounterScreen(),
      getPages: Routes.getRoutes,
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
