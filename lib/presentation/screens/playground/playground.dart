import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../counter_screen/counter_screen.dart';

class Playground extends StatelessWidget {
  static String route = '/playground';
  const Playground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Playground'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Get.toNamed(CounterScreen.route);
                },
                child: const Text("Main App")),
            MaterialButton(
              onPressed: () {
                // go to themeTesting.dart
                Get.toNamed('themeTesting');
              },
              child: const Text("Go to Theme Testing"),
            ),
            
          ],
        ),
      ),
    );
  }
}
