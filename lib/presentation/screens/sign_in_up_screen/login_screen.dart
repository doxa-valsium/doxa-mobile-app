import 'package:doxa_mobile_app/presentation/screens/sign_in_up_screen/local_widgets/dashed_button.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_formbuilder_textfield.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class LoginScreen extends StatelessWidget {
  static const String route = 'LoginRoute';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset('assets/images/final_logo.png')),
                const SizedBox(
                  height: 48 / 2,
                ),

                Center(child: Image.asset('assets/images/login_screen.png')),
                const SizedBox(
                  height: 56 / 4,
                ),

                Text("Login", style: Theme.of(context).textTheme.headline5, textAlign: TextAlign.left),
                const SizedBox(
                  height: 28 / 4,
                ),

                CustomFormBuilderTextField(
                  name: "Email",
                  controller: TextEditingController(),
                  keyboardType: TextInputType.emailAddress,
                  labelText: "Email Address",
                  prefixIcon: const Icon(Icons.alternate_email),
                  validators: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.email(),
                  ]),
                ),

                const SizedBox(height: 16 / 2),

                CustomFormBuilderTextField(
                  name: "Password",
                  controller: TextEditingController(),
                  keyboardType: TextInputType.visiblePassword,
                  labelText: "Password",
                  prefixIcon: const Icon(Icons.lock),
                  validators: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.minLength(6),
                  ]),
                ),
                const SizedBox(
                  height: 48,
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
      ),
    );
  }
}
