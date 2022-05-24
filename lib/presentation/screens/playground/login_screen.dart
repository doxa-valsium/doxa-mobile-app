import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String route = 'LoginRoute';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              children: [
                Image.asset('assets/images/logo.png'),
                const SizedBox(height: 20),
                Image.asset('assets/images/login_screen.png'),
                const SizedBox(height: 20),
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
                const SizedBox(height: 20),
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
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text("Or if you’re new here", style: Theme.of(context).textTheme.caption),
                ),
                SizedBox(
                  width: double.maxFinite,
                  height: 50.0,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      'REGISTER',
                      style: Theme.of(context).textTheme.button?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                    ),
                  ),
                ),
              ],
            ),
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
