import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  static const String route = 'messages-screen';

  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {},
        child: const Text(
          'Messages Screen',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
