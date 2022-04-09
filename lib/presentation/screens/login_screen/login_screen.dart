import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static String route = '/login-screen';

  const LoginScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Screen')),
      body: const SafeArea(child: Center(child: Text('Login Screen'))),
    );
  }
}