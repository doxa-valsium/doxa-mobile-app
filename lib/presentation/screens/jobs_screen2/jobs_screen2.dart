import 'package:flutter/material.dart';

// only for testing navigation stack...

class JobsScreen2 extends StatelessWidget {
  const JobsScreen2({Key? key}) : super(key: key);
  static const String route = '/job-screen2';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('Jobs Screen'),
        ),
      ),
    );
  }
}
