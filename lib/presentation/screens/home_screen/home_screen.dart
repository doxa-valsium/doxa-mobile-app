import 'package:doxa_mobile_app/logger.dart';
import 'package:doxa_mobile_app/presentation/screens/home_screen2/home_screen2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// this is only for testing navigation stack..

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String route = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: InkWell(
            onTap: () {
              Get.toNamed(HomeScreen2.route);
            },
            child: Text('Home Screen'),
          ),
        ),
      ),
    );
  }
}
