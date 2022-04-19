import 'package:doxa_mobile_app/presentation/screens/playground/components.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/pulsing_button.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/theme_test.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/jobs.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/single_job_opened.dart';
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
                Get.toNamed(ThemeTest.route);
              },
              child: const Text("Go to Theme Testing"),
            ),
            MaterialButton(
              onPressed: () {
                Get.toNamed(PulsingButton.route);
              },
              child: const Text("Go to Pusling Button"),
            ),
            MaterialButton(
              onPressed: () {
                Get.toNamed(CustomWidgets.route);
              },
              child: const Text("Custom Widgets"),
            ),
            MaterialButton(
              onPressed: () {
                Get.toNamed(JobsPage.route);
              },
              child: const Text("Go to Jobs"),
            ),
            MaterialButton(
              onPressed: () {
                Get.toNamed(SingleJobOpened.route);
              },
              child: const Text("Go to Single Job Opened"),
            ),
          ],
        ),
      ),
    );
  }
}
