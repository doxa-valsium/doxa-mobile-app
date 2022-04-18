import 'package:avatar_glow/avatar_glow.dart';
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
              child: AvatarGlow(
                glowColor: Theme.of(context).colorScheme.primary,
                endRadius: 90.0,
                duration: const Duration(milliseconds: 2000),
                repeat: true,
                showTwoGlows: true,
                repeatPauseDuration: const Duration(milliseconds: 100),
                child: Container(
                  width: 100.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Theme.of(context).colorScheme.primary, Theme.of(context).colorScheme.secondary]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}