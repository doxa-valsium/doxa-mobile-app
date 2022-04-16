import 'package:auto_route/auto_route.dart';
import 'package:doxa_mobile_app/routes/router.gr.dart';
import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () => context.router.push(const SignupRoute()),
        child: const Text(
          'Messages Screen',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
