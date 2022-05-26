import 'package:doxa_mobile_app/presentation/widgets/custom_app_bar.dart';
import 'package:doxa_mobile_app/styles.dart';
import 'package:flutter/material.dart';

class EmailVerificationScreen extends StatelessWidget {
  static const String route = 'email-verification-screen';
  const EmailVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                  const Spacer(
                    flex: 2,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        OTPcontainer(),
                        OTPcontainer(),
                        OTPcontainer(),
                        OTPcontainer(),
                        OTPcontainer(),
                        OTPcontainer(),
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  Row(
                    children: [
                      Text(
                        "Didn't receive it?",
                        style: Theme.of(context).textTheme.subtitle1?.copyWith(
                              color: Theme.of(context).colorScheme.surfaceVariant,
                            ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        "Request a new one",
                        style: Theme.of(context).textTheme.subtitle1?.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                      ),
                    ],
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    height: 50.0,
                    child: ElevatedButton(
                      child: Text(
                        'COMPLETE VERIFICATION',
                        style: Theme.of(context).textTheme.button?.copyWith(color: Colors.white),
                      ),
                      onPressed: () {
                        // context.router.push(const EmailVerificationRoute());
                      },
                    ),
                  ),
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
        textAlign: TextAlign.center,
        maxLength: 1,
        textInputAction: TextInputAction.next,
        style: Theme.of(context).textTheme.headline6?.copyWith(color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.bold, fontSize: 20),
        decoration: InputDecoration(
          counterText: '',
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
