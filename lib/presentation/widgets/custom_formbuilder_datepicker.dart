import 'package:doxa_mobile_app/logger.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_formbuilder_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:intl/intl.dart';

class CustomFormBuilderDatePicker extends StatelessWidget {
  final DateTime _date = DateTime.now();
  final TextEditingController _dateController = TextEditingController();
  final DateFormat dateFormatter = DateFormat('dd-MM-yyyy');
  final String labelText;
  final String name;

  CustomFormBuilderDatePicker({Key? key, required this.labelText, required this.name}) : super(key: key);

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
      controller: _dateController,
      keyboardType: TextInputType.text,
      prefixIcon: const Icon(
        Icons.calendar_today_outlined,
        size: 20,
      ),
      labelText: labelText,
      readOnly: true,
      onTap: () async {
        DateTime date = await _showDatePicker(context);
        _dateController.text = dateFormatter.format(date).toString();
        logger.d(_dateController.text);
      },
      validators: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
      ]),
    );
  }
}
