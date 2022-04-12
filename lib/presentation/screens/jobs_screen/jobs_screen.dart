import 'package:flutter/material.dart';

class JobsScreen extends StatelessWidget {
  static const String route = '/';
  const JobsScreen({Key? key}) : super(key: key);

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
