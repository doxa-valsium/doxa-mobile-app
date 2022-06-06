import 'package:auto_route/auto_route.dart';
import 'package:doxa_mobile_app/logger.dart';
import 'package:doxa_mobile_app/presentation/screens/sign_in_up_screen/local_widgets/dashed_button.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_formbuilder_dropdown.dart';
import 'package:doxa_mobile_app/presentation/widgets/selection_list_screen.dart/list_screen.dart';
import 'package:doxa_mobile_app/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Join Company",
                      style: Theme.of(context).textTheme.headline6!.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Iconify(
                      Mdi.info_circle_outline,
                      size: 20,
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ],
                ),

                const SizedBox(
                  height: 28,
                ),
                CustomFormBuilderDropDown(
                  name: "companyName",
                  labelText: "Company Name",
                  validators: FormBuilderValidators.required(),
                  child: const ListScreen(
                    type: FormListType.staticList,
                    title: "Choose Your Company",
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomFormBuilderDropDown(
                  name: "yourPosition",
                  labelText: "Your Position",
                  validators: FormBuilderValidators.required(),
                  child: const ListScreen(
                    type: FormListType.staticList,
                    title: "Choose Your Position",
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
                      "Or if you can’t find your company",
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.surfaceVariant),
                    ),
                  ),
                ),
                DashedButton(
                  borderRadius: 16,
                  buttonText: "ADD YOUR OWN COMPANY",
                  color: Theme.of(context).colorScheme.onSecondaryContainer,
                  func: () {
                    context.router.push(AddCompanyFlowRoute());
                  },
                  dashLineRadius: 16,
                  height: 50 - 4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
