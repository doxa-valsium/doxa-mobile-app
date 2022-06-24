import 'package:doxa_mobile_app/logger.dart';
import 'package:doxa_mobile_app/models/models.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_formbuilder_dropdown.dart';
import 'package:doxa_mobile_app/presentation/widgets/dashed_button.dart';
import 'package:doxa_mobile_app/presentation/widgets/formfield_title_with_info.dart';
import 'package:doxa_mobile_app/presentation/widgets/selection_list_screen/list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class AddCompanyScreen extends StatelessWidget {
  static const String route = 'AddCompanyRoute';
  final _addCompanyKey = GlobalKey<FormBuilderState>();
  AddCompanyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: FormBuilder(
          key: _addCompanyKey,
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Your Company",
                  style: Theme.of(context).textTheme.headline5?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 28,
                ),
                const JobFieldTitleWithInfo(
                  title: "Join Company",
                  isOptional: false,
                ),
                const SizedBox(
                  height: 28,
                ),
                CustomFormBuilderDropDown(
                  name: "companyName",
                  labelText: "Company Name",
                  child: const ListScreen(
                    selectableType: Company,
                    type: FormListType.staticList,
                    title: "Your Company",
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomFormBuilderDropDown(
                  name: "yourPosition",
                  labelText: "Your Position",
                  child: const ListScreen(
                    selectableType: JobTitle,
                    type: FormListType.staticList,
                    title: "Your Position",
                  ),
                ),

                const Spacer(),
                Center(child: Image.asset('assets/images/counting_stars 1.png')),
                const Spacer(),
                SizedBox(
                  width: double.maxFinite,
                  height: 50.0,
                  child: ElevatedButton(
                    child: Text(
                      'JOIN YOUR COMPANY',
                      style: Theme.of(context).textTheme.button?.copyWith(color: Colors.white),
                    ),
                    onPressed: () {
                      if (_addCompanyKey.currentState!.saveAndValidate()) {
                        logger.i('Form is valid');
                      }
                    },
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "Or if you can't find your company",
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.surfaceVariant),
                    ),
                  ),
                ),
                DashedButton(
                  borderRadius: 16,
                  buttonText: "ADD YOUR OWN COMPANY",
                  color: Theme.of(context).colorScheme.onSecondaryContainer,
                  onPressed: () {
                    // context.router.push(AddCompanyFlowRoute());
                  },
                  dashLineRadius: 16,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
