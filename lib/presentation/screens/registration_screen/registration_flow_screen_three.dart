import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegistrationFlowScreenThree extends StatelessWidget {
  const RegistrationFlowScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
          "Email Sent! Click On The Link In The Email To Complete Your Registration")),
      ),
    );
  }
}
