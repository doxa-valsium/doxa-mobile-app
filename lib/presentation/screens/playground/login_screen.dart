import 'package:dotted_border/dotted_border.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_dotted_border.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String route = 'LoginRoute';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/images/final_logo.png'),
              const Spacer(
                flex: 1,
              ),
              Image.asset('assets/images/login_screen.png'),
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
                flex: 1,
              ),
              SizedBox(
                width: double.maxFinite,
                height: 50.0,
                child: ElevatedButton(
                  child: Text(
                    'BUTTON',
                    style: Theme.of(context).textTheme.button?.copyWith(color: Colors.white),
                  ),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Or if you’re new here",
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.surfaceVariant),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: CustomDottedBorder(
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(16),
                  child: Container(
                    height: 50 - 4,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Theme.of(context).colorScheme.onSecondaryContainer,
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Center(
                      child: Text(
                        'REGISTER',
                        style: Theme.of(context).textTheme.button,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InputField extends StatelessWidget {
  final String? hintText;
  final Widget? suffixWidget;
  final TextInputType? inputType;
  final bool? isPassword;
  final Icon? prefixIcon;

  const InputField({
    Key? key,
    @required this.hintText,
    @required this.suffixWidget,
    @required this.inputType,
    @required this.isPassword,
    @required this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      obscureText: isPassword ?? false,
      decoration: InputDecoration(
        suffix: suffixWidget,
        hintText: hintText,
        prefixIcon: prefixIcon,
        prefixIconColor: Theme.of(context).colorScheme.surfaceVariant,
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
    );
  }
}
