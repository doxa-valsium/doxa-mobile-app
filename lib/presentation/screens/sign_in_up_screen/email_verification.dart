import 'package:doxa_mobile_app/presentation/widgets/custom_app_bar.dart';
import 'package:doxa_mobile_app/styles.dart';
import 'package:flutter/material.dart';

class EmailVerificationScreen extends StatelessWidget {
  static const String route = 'email-verification-screen';
  const EmailVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: CustomAppBar(
            title: 'Email Verification',
            showBackButton: true,
            body: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset('assets/images/email_verification.png'),
                  ),
                  const Spacer(),
                  Text(
                    "We have sent a code to abc@gmail.com. Please enter it below",
                    style: Theme.of(context).textTheme.headline6?.copyWith(color: Theme.of(context).colorScheme.surfaceVariant),
                  ),
                  const Spacer(),
                  Center(
                    child: Row(
                      children: const [
                        Expanded(child: OTPcontainer()),
                        const Spacer(),
                        Expanded(child: OTPcontainer()),
                        const Spacer(),
                        Expanded(child: OTPcontainer()),
                        const Spacer(),
                        Expanded(child: OTPcontainer()),
                        const Spacer(),
                        Expanded(child: OTPcontainer()),
                        const Spacer(),
                        Expanded(child: OTPcontainer()),
                      ],
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}

class OTPcontainer extends StatelessWidget {
  const OTPcontainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 48,
      decoration: BoxDecoration(boxShadow: Styles.elevation3, color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: TextFormField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          filled: true,
          fillColor: Theme.of(context).colorScheme.onSecondaryContainer,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
}
