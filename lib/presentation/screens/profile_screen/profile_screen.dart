import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static const String route = 'profile-screen';

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Profile Screen',
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
