import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  static ThemeData mainTheme = ThemeData(
    cardColor: _colorScheme.background,
    disabledColor: _colorScheme.onSurface,
    errorColor: _colorScheme.error,
    highlightColor: _colorScheme.primary,
    hintColor: _colorScheme.onSurface,
    primaryColor: _colorScheme.primary,
    scaffoldBackgroundColor: _colorScheme.background,
    bottomAppBarColor: _colorScheme.background,
    colorScheme: _colorScheme,
    textTheme: _textTheme,
  );

  static final TextTheme _textTheme = TextTheme(
    headline1: GoogleFonts.poppins(
      fontSize: 96,
      fontWeight: FontWeight.w300,
      letterSpacing: -1.5,
    ),
    headline2: GoogleFonts.poppins(
      fontSize: 60,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5,
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
      fontSize: 18,
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
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
    ),
    overline: GoogleFonts.poppins(
      fontSize: 10,
      fontWeight: FontWeight.w300,
      letterSpacing: 0.3,
    ),
  );

  static const ColorScheme _colorScheme = ColorScheme(
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
    onSecondaryContainer: Color(0xFFF6FCFF),
    onError: Color(0xFFD53030),
    onSurface: Color(0xFFA6A6A6),
    onBackground: Color(0xFF081C43),
    tertiary: Color(0xFFD9FFE1),
    onTertiary: Color(0xFF00CB2D),
  );
  static List<BoxShadow> elevation1 = [
    const BoxShadow(
      color: Color.fromRGBO(34, 32, 32, 0.25),
      blurRadius: 54,
      spreadRadius: 0.0,
      offset: Offset(3.02, 1.01),
    )
  ];

  static List<BoxShadow> elevation2 = [
    const BoxShadow(
      color: Color.fromRGBO(178, 176, 176, 0.25),
      blurRadius: 53.01,
      spreadRadius: 0.0,
      offset: Offset(3.25, 14.06),
    )
  ];

  static List<BoxShadow> elevation3 = [
    const BoxShadow(
      color: Color.fromRGBO(0, 0, 0, 0.25),
      blurRadius: 4.0,
      spreadRadius: 0.0,
      offset: Offset(0.0, 4.0),
    )
  ];
}
