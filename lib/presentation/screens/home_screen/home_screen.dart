import 'package:doxa_mobile_app/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () => context.router.push(
            const CounterRoute(),
          ),
          child: const Text(
            'Home Screen',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
