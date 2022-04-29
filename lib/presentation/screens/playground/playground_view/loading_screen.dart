import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  static const String route = 'loading-screen';

  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
