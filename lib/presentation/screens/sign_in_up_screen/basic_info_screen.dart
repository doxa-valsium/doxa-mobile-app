import 'package:doxa_mobile_app/presentation/screens/sign_in_up_screen/local_widgets/input_field.dart';
import 'package:doxa_mobile_app/presentation/screens/sign_in_up_screen/local_widgets/type_selector.dart';
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
                    "Welcome! We would like to know a little more about you.",
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
                  const Spacer(
                    flex: 2,
                  ),
                  Text(
                    "Register as",
                    style: Theme.of(context).textTheme.subtitle2?.copyWith(color: Theme.of(context).colorScheme.surfaceVariant),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 10,
                        child: TypeSelector(
                          bodycolor: Theme.of(context).colorScheme.onSecondaryContainer,
                          elevation: Styles.elevation3,
                          imagePath: 'assets/images/candidate.png',
                          text: 'Candidate',
                        ),
                      ),
                      const Spacer(),
                      Expanded(
                        flex: 10,
                        child: TypeSelector(
                          bodycolor: Theme.of(context).colorScheme.onSecondaryContainer,
                          elevation: Styles.elevation3,
                          imagePath: 'assets/images/recruiter.png',
                          text: 'Recruiter',
                        ),
                      ),
                    ],
                  ),
                  const Spacer(
                    flex: 10,
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    height: 50.0,
                    child: ElevatedButton(
                      child: Text(
                        'CONTINUE',
                        style: Theme.of(context).textTheme.button?.copyWith(color: Colors.white),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
