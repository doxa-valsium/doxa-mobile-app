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
          children: const [
            Center(
              child: PulsatingButton(),
            ),
          ],
        ),
      ),
    );
  }
}

class PulsatingButton extends StatelessWidget {
  final double discRadius;
  final double animationRadius;
  final Color primaryColor;
  final Color secondaryColor;
  final Color glowColor;
  final Duration animationDuration;
  final Duration delay;

  const PulsatingButton({
    this.animationRadius = 100,
    this.discRadius = 90,
    this.primaryColor = const Color(0xFF0061FE),
    this.secondaryColor = const Color(0xFFDFEBFF),
    this.glowColor = Colors.blue,
    this.animationDuration = const Duration(milliseconds: 2000),
    this.delay = const Duration(milliseconds: 100),
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AvatarGlow(
      glowColor: glowColor,
      endRadius: animationRadius,
      duration: animationDuration,
      repeat: true,
      showTwoGlows: true,
      repeatPauseDuration: delay,
      child: Container(
        width: discRadius,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [primaryColor, secondaryColor],
          ),
        ),
      ),
    );
  }
}
