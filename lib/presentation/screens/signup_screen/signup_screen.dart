import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
    static String route = '/signup-screen';

  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SignUp Screen')),
      body: const Center(child: Text('SignUp Screen')),
    );
  }
}
