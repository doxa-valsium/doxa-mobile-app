import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  static const String route = '/';
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('Messages Screen'),
        ),
      ),
    );
  }
}
