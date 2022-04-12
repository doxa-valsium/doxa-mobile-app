import 'package:doxa_mobile_app/logger.dart';
import 'package:flutter/material.dart';

// this is only for testing navigation stack..

class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({Key? key}) : super(key: key);
  static const String route = '/home-screen2';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('Home Screen 2'),
        ),
      ),
    );
  }
}
