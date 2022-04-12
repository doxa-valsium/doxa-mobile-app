import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static const String route = '/';
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('Profile Screen'),
        ),
      ),
    );
  }
}
