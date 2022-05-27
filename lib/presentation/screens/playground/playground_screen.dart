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
                context.router.push(const ManageImagesRoute());
              },
              child: const Text("Go to manage images"),
            ),
            MaterialButton(
              onPressed: () {
                context.router.push(const FlowViewDemoRoute());
              },
              child: const Text("Go to Flow View Demo"),
            ),
            MaterialButton(
              onPressed: () {
                context.router.push(JobFormFlowRoute());
              },
              child: const Text("Go to Job Form"),
            ),
            MaterialButton(
              onPressed: () {
                context.router.push(const LoginRoute());
              },
              child: const Text("Go to Login Screen"),
            ),
            MaterialButton(
              onPressed: () {
                context.router.push(const RegistrationRoute());
              },
              child: const Text("Go to Registration Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
