import 'package:doxa_mobile_app/presentation/screens/sign_in_up_screen/local_widgets/input_field.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_app_bar.dart';
import 'package:doxa_mobile_app/styles.dart';
import 'package:flutter/material.dart';

class BasicInfoScreen extends StatelessWidget {
  static const String route = 'basic-info-screen';
  const BasicInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: CustomAppBar(
            title: 'Basic Info',
            showBackButton: true,
            body: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome! We would like to know a little more about.",
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Theme.of(context).colorScheme.surfaceVariant),
                  ),
                  const Spacer(),
                  const InputField(
                    hintText: 'First Name',
                    suffixWidget: null,
                    inputType: TextInputType.name,
                    isPassword: false,
                  ),
                  const Spacer(),
                  const InputField(
                    hintText: 'Last Name',
                    suffixWidget: null,
                    inputType: TextInputType.name,
                    isPassword: false,
                  ),
                  const Spacer(),
                  Text(
                    "Register as",
                    style: Theme.of(context).textTheme.subtitle2?.copyWith(color: Theme.of(context).colorScheme.surfaceVariant),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Expanded(child: TypeSelector(), flex: 10),
                      const Spacer(),
                      Expanded(child: TypeSelector(), flex: 10),
                      // TypeSelector(),
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}

class TypeSelector extends StatelessWidget {
  List<BoxShadow> elevation;
  Color bodycolor;
  String imagePath;

  TypeSelector({Key? key, required this.elevation, required this.bodycolor, required this.imagePath}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: Styles.elevation3,
        color: Theme.of(context).colorScheme.onSecondaryContainer,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Theme.of(context).colorScheme.primary,
          width: 1.5,
        ),
      ),
      padding: const EdgeInsets.only(left: 40, right: 40, top: 32, bottom: 10),
      child: Column(
        children: [
          Image.asset('assets/images/candidate.png'),
          const SizedBox(height: 8),
          const Text(
            "Candidate",
          ),
        ],
      ),
    );
  }
}
