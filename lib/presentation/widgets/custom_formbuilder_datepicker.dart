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

  CustomFormBuilderDatePicker({Key? key}) : super(key: key);

  _showDatePicker(BuildContext context) async {
    // if platform is android
    if (Theme.of(context).platform == TargetPlatform.android) {
      return await showDatePicker(
        context: context,
        initialDate: DateTime(_date.year - 20),
        firstDate: DateTime(_date.year - 100),
        lastDate: DateTime(_date.year - 13),
      );
    } else if (Theme.of(context).platform == TargetPlatform.iOS) {
      return await showCupertinoModalPopup(
        context: context,
        builder: (BuildContext context) {
          return CupertinoDatePicker(
            mode: CupertinoDatePickerMode.date,
            initialDateTime: DateTime(_date.year - 20),
            minimumYear: DateTime(_date.year - 100).year,
            maximumYear: DateTime(_date.year - 13).year,
            onDateTimeChanged: (DateTime date) {
              // _dateController.text = dateFormatter.format(date);
            },
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomFormBuilderTextField(
      name: "DOB",
      controller: _dateController,
      keyboardType: TextInputType.text,
      prefixIcon: const Icon(
        Icons.calendar_today_outlined,
        size: 20,
      ),
      labelText: "Date of birth",
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
