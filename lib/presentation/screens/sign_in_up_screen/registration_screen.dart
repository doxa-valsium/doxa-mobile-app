import 'package:auto_route/auto_route.dart';
import 'package:doxa_mobile_app/presentation/screens/sign_in_up_screen/local_widgets/dashed_button.dart';
import 'package:doxa_mobile_app/presentation/screens/sign_in_up_screen/local_widgets/input_field.dart';
import 'package:doxa_mobile_app/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegistrationScreen extends StatelessWidget {
  static const String route = 'registration-screen';
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset('assets/images/final_logo.png')),

              const Spacer(
                flex: 3,
              ),

              Center(child: Image.asset('assets/images/registration_screen.png')),

              const Spacer(
                flex: 3,
              ),

              Text("Register", style: Theme.of(context).textTheme.headline5, textAlign: TextAlign.left),

              const Spacer(
                flex: 1,
              ),

              const InputField(
                hintText: 'Email',
                inputType: TextInputType.emailAddress,
                isPassword: false,
                prefixIcon: Icon(Icons.alternate_email),
                suffixWidget: null,
              ),

              const SizedBox(height: 20),

              InputField(
                hintText: 'Password',
                inputType: TextInputType.text,
                isPassword: true,
                prefixIcon: Icon(Icons.lock),
                suffixWidget: null,
                suffixIcon: Icon(Icons.visibility_off_outlined, size: 18, color: Theme.of(context).colorScheme.surfaceVariant),
              ),

              const Spacer(
                flex: 3,
              ),
              // TODO: Make ElevatedButton a custom widget

              SizedBox(
                width: double.maxFinite,
                height: 50.0,
                child: ElevatedButton(
                  child: Text(
                    'REGISTER',
                    style: Theme.of(context).textTheme.button?.copyWith(color: Colors.white),
                  ),
                  onPressed: () {},
                ),
              ),

              Center(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "Or if you’re already a member",
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.surfaceVariant),
                  ),
                ),
              ),

              DashedButton(borderRadius: 16, buttonText: "LOGIN IN", color: Theme.of(context).colorScheme.onSecondaryContainer, func: () {}, dashLineRadius: 16, height: 50 - 4),
            ],
          ),
        ),
      ),
    );
  }
}
