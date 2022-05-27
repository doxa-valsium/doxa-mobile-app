import 'package:doxa_mobile_app/presentation/screens/sign_in_up_screen/local_widgets/dashed_button.dart';
import 'package:doxa_mobile_app/presentation/screens/sign_in_up_screen/local_widgets/input_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String route = 'LoginRoute';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
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
              Center(child: Image.asset('assets/images/login_screen.png')),
              const Spacer(
                flex: 3,
              ),
              Text("Login", style: Theme.of(context).textTheme.headline5, textAlign: TextAlign.left),
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
              const InputField(
                hintText: 'Password',
                inputType: TextInputType.text,
                isPassword: true,
                prefixIcon: Icon(Icons.lock),
                suffixWidget: Text(
                  'Forgot?',
                  style: TextStyle(color: Colors.blue),
                ),
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
                    'LOGIN',
                    style: Theme.of(context).textTheme.button?.copyWith(color: Colors.white),
                  ),
                  onPressed: () {},
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "Or if you’re new here",
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.surfaceVariant),
                  ),
                ),
              ),
              DashedButton(borderRadius: 16, buttonText: "SIGN UP", color: Theme.of(context).colorScheme.onSecondaryContainer, func: () {}, dashLineRadius: 16, height: 50 - 4),
            ],
          ),
        ),
      ),
    );
  }
}
