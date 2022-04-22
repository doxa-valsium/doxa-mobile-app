import 'package:doxa_mobile_app/presentation/widgets/pulsating_button.dart';
import 'package:flutter/material.dart';

class PulsingButtonScreen extends StatelessWidget {
  static const String route = 'pulsing-button-screen';

  const PulsingButtonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Playground'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: PulsatingButton(
                primaryColor: Theme.of(context).colorScheme.primary,
                secondaryColor: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
