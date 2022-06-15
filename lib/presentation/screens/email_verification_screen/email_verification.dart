import 'package:doxa_mobile_app/presentation/screens/email_verification_screen/local_widgets/otp_container.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_app_bar_and_body.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class EmailVerificationScreen extends StatelessWidget {
  static const String route = 'email-verification-screen';
  const EmailVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomAppBarAndBody(
          showBackButton: true,
          title: "Email Verification",
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset('assets/images/email_verification.png'),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  Text(
                    "We have sent a code to abc@gmail.com. Please enter it below",
                    style: Theme.of(context).textTheme.headline6?.copyWith(color: Theme.of(context).colorScheme.surfaceVariant),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        OTPcontainer(
                          name: "OTP1",
                          controller: TextEditingController(),
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          validators: FormBuilderValidators.compose([
                            FormBuilderValidators.required(),
                            FormBuilderValidators.numeric(),
                          ]),
                        ),
                        OTPcontainer(
                          name: "OTP2",
                          controller: TextEditingController(),
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          validators: FormBuilderValidators.compose([
                            FormBuilderValidators.required(),
                            FormBuilderValidators.numeric(),
                          ]),
                        ),
                        OTPcontainer(
                          name: "OTP3",
                          controller: TextEditingController(),
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          validators: FormBuilderValidators.compose([
                            FormBuilderValidators.required(),
                            FormBuilderValidators.numeric(),
                          ]),
                        ),
                        OTPcontainer(
                          name: "OTP4",
                          controller: TextEditingController(),
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          validators: FormBuilderValidators.compose([
                            FormBuilderValidators.required(),
                            FormBuilderValidators.numeric(),
                          ]),
                        ),
                        OTPcontainer(
                          name: "OTP5",
                          controller: TextEditingController(),
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          validators: FormBuilderValidators.compose([
                            FormBuilderValidators.required(),
                            FormBuilderValidators.numeric(),
                          ]),
                        ),
                        OTPcontainer(
                          name: "OTP6",
                          controller: TextEditingController(),
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.done,
                          validators: FormBuilderValidators.compose([
                            FormBuilderValidators.required(),
                            FormBuilderValidators.numeric(),
                          ]),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 60,
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
                  const SizedBox(
                    height: 24,
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
            ),
          ),
        ),
      ),
    );
  }
}
