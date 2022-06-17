import 'package:doxa_mobile_app/constants.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_formbuilder_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class CustomFormBuilderDatePicker extends StatelessWidget {
  final DateTime _date = DateTime.now();
  final TextEditingController controller;
  final String labelText;
  final String name;

  CustomFormBuilderDatePicker({Key? key, required this.labelText, required this.name, required this.controller}) : super(key: key);

  _showDatePicker(BuildContext context) async {
    if (Theme.of(context).platform == TargetPlatform.android) {
      return await showDatePicker(
        context: context,
        initialDate: DateTime(_date.year - 20),
        firstDate: DateTime(_date.year - 100),
        lastDate: DateTime(_date.year - 13),
      );
    } else if (Theme.of(context).platform == TargetPlatform.iOS) {
      DateTime selectedDate = DateTime(_date.year - 20);
      return await showCupertinoModalPopup<DateTime?>(
          context: context,
          builder: (_) => Container(
                height: 500,
                color: const Color.fromARGB(255, 255, 255, 255),
                child: Column(
                  children: [
                    SizedBox(
                      height: 400,
                      child: CupertinoDatePicker(
                          mode: CupertinoDatePickerMode.date,
                          initialDateTime: DateTime(_date.year - 20),
                          minimumYear: DateTime(_date.year - 100).year,
                          maximumYear: DateTime(_date.year - 13).year,
                          onDateTimeChanged: (DateTime newDate) {
                            selectedDate = newDate;
                          }),
                    ),

                    // Close the modal
                    CupertinoButton(
                      child: const Text('OK'),
                      onPressed: () => Navigator.of(context, rootNavigator: true).pop(selectedDate),
                    )
                  ],
                ),
              ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomFormBuilderTextField(
      name: name,
      controller: controller,
      keyboardType: TextInputType.text,
      prefixIcon: const Icon(
        Icons.calendar_today_outlined,
        size: 20,
      ),
      labelText: labelText,
      readOnly: true,
      onTap: () async {
        DateTime date = await _showDatePicker(context);
        controller.text = kDateFormat.format(date).toString();
      },
      validators: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
      ]),
    );
  }
}
