import 'package:auto_route/auto_route.dart';
import 'package:doxa_mobile_app/presentation/screens/sign_in_up_screen/local_widgets/type_selector.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_app_bar.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_formbuilder_dropdown.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_formbuilder_textfield.dart';
import 'package:doxa_mobile_app/presentation/widgets/selection_list_screen.dart/list_screen.dart';
import 'package:doxa_mobile_app/routes/router.gr.dart';
import 'package:doxa_mobile_app/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';

class BasicInfoScreen extends StatefulWidget {
  static const String route = 'basic-info-screen';
  const BasicInfoScreen({Key? key}) : super(key: key);

  @override
  State<BasicInfoScreen> createState() => _BasicInfoScreenState();
}

class _BasicInfoScreenState extends State<BasicInfoScreen> {
  DateTime? _date = DateTime.now();
  final TextEditingController _dateController = TextEditingController();
  final DateFormat dateFormatter = DateFormat('dd-MM-yyyy');

  _handleDatePicker() async {
    // if platform is android
    if (defaultTargetPlatform == TargetPlatform.android) {
      final DateTime? date = await showDatePicker(
        context: context,
        initialDate: DateTime(_date!.year - 20),
        firstDate: DateTime(_date!.year - 100),
        lastDate: DateTime(_date!.year - 13),
      );
      if (date != null && date != _date) {
        setState(() {
          _date = date;
        });
        _dateController.text = dateFormatter.format(date);
      }
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      // final DateTime? date =
      await showCupertinoModalPopup(
        context: context,
        builder: (BuildContext context) {
          return CupertinoDatePicker(
            mode: CupertinoDatePickerMode.date,
            initialDateTime: DateTime(_date!.year - 20),
            minimumYear: DateTime(_date!.year - 100).year,
            maximumYear: DateTime(_date!.year - 13).year,
            onDateTimeChanged: (DateTime date) {
              setState(() {
                _date = date;
              });
              _dateController.text = dateFormatter.format(date);
            },
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: CustomAppBar(
          showBackButton: true,
          title: 'Basic Info',
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome! We would like to know a little more about you.",
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Theme.of(context).colorScheme.surfaceVariant),
                  ),
                  const SizedBox(height: 16),
                  CustomFormBuilderTextField(
                    name: "FirstName",
                    controller: TextEditingController(),
                    keyboardType: TextInputType.text,
                    labelText: "First Name",
                    validators: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                  ),
                  const SizedBox(height: 16),
                  CustomFormBuilderTextField(
                    name: "LastName",
                    controller: TextEditingController(),
                    keyboardType: TextInputType.text,
                    labelText: "Last Name",
                    validators: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                  ),
                  const SizedBox(height: 16),
                  CustomFormBuilderDropDown(
                    name: "Gender",
                    labelText: "Gender",
                    validators: FormBuilderValidators.required(),
                    child: const ListScreen(
                      type: FormListType.staticList,
                      title: "Workplace Type",
                    ),
                  ),
                  const SizedBox(height: 16),
                  CustomFormBuilderTextField(
                    name: "DOB",
                    controller: _dateController,
                    keyboardType: TextInputType.text,
                    prefixIcon: const Icon(
                      Icons.calendar_today_outlined,
                      size: 20,
                    ),
                    labelText: "Date of birth",
                    readOnly: true,
                    onTap: _handleDatePicker,
                    validators: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Register as",
                    style: Theme.of(context).textTheme.subtitle2?.copyWith(color: Theme.of(context).colorScheme.surfaceVariant),
                  ),
                  const SizedBox(height: 16),
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
                      const SizedBox(width: 16),
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
                  const SizedBox(
                    height: 64,
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    height: 50.0,
                    child: ElevatedButton(
                      child: Text(
                        'CONTINUE',
                        style: Theme.of(context).textTheme.button?.copyWith(color: Colors.white),
                      ),
                      onPressed: () {
                        context.router.push(const EmailVerificationRoute());
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
