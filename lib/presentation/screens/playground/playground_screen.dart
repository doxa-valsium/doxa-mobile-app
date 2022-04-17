import 'package:doxa_mobile_app/presentation/screens/playground/custom_widgets_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/pulsing_button_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/theme_test_screen.dart';
import 'package:doxa_mobile_app/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import '../counter_screen/counter_screen.dart';

class PlaygroundScreen extends StatelessWidget {
  static const String route = '/';
  const PlaygroundScreen({Key? key}) : super(key: key);

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
            TextButton(onPressed: () {}, child: const Text("Main App")),
            MaterialButton(
              onPressed: () {
                context.router.push(ThemeTestRoute());
              },
              child: const Text("Go to Theme Testing"),
            ),
            MaterialButton(
              onPressed: () {
                context.router.push(PulsingButtonRoute());
              },
              child: const Text("Go to Pusling Button"),
            ),
            MaterialButton(
              onPressed: () {
                context.router.push(CustomWidgetsRoute());
              },
              child: const Text("Custom Widgets"),
            ),
            MaterialButton(
              onPressed: () {
                context.router.push(NavigatorRoute());
              },
              child: const Text("Go to Bottom Nav Bar (Auto Route) "),
            ),
          ],
        ),
      ),
    );
  }
}
