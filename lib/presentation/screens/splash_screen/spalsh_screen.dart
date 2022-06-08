import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static const String route = '';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Image.asset('assets/images/logo.png'),
      ),
    ));
  }
}
