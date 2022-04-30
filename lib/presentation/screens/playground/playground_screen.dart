import 'package:doxa_mobile_app/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

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
            MaterialButton(
              onPressed: () {
                context.router.push(const NavigatorRoute());
              },
              child: const Text("Main App"),
            ),
            MaterialButton(
              onPressed: () {
                context.router.push(const ThemeTestRoute());
              },
              child: const Text("Go to Theme Testing"),
            ),
            MaterialButton(
              onPressed: () {
                context.router.push(const PulsingButtonRoute());
              },
              child: const Text("Go to Pusling Button"),
            ),
            MaterialButton(
              onPressed: () {
                context.router.push(const CustomWidgetsRoute());
              },
              child: const Text("Custom Widgets"),
            ),
            MaterialButton(
              onPressed: () {
                //context.router.pushRoute(LoginRoute());
                context.router.push(const AppNavigatorRoute());
              },
              child: const Text("Go to login Screen"),
            ),
            MaterialButton(
              onPressed: () {},
              child: const Text("Go to Single Job Opened"),
            ),
          ],
        ),
      ),
    );
  }
}
