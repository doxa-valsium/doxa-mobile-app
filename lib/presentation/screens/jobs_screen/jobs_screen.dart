import 'package:doxa_mobile_app/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class JobsScreen extends StatelessWidget {
  static const String route = 'jobs-screen';

  const JobsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () => context.router.push(const LoginRoute()),
        child: const Text(
          'Jobs Screen',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
