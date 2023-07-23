import 'package:doxa_mobile_app/logger.dart';
import 'package:doxa_mobile_app/presentation/screens/add_company_screens/add_company_step_one.dart';
import 'package:doxa_mobile_app/presentation/screens/add_company_screens/add_company_step_three.dart';
import 'package:doxa_mobile_app/presentation/screens/add_company_screens/add_company_step_two.dart';
import 'package:doxa_mobile_app/presentation/widgets/flow_view/flow_screen.dart';
import 'package:doxa_mobile_app/presentation/widgets/flow_view/flow_screen_widgets.dart';
import 'package:doxa_mobile_app/presentation/widgets/flow_view/flow_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class AddCompanyFlowScreen extends StatelessWidget {
  static const String route = 'add-company-flow-screen';
  final _formKey = GlobalKey<FormBuilderState>();
  AddCompanyFlowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FormBuilder(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: _formKey,
          child: FlowView(
            steps: [
              FlowScreen(
                title: 'Add Your Company',
                anchor: FlowScreenDefaultAnchor(
                  buttonText: 'Next',
                  onPressed: (context) {
                    if (_formKey.currentState!.saveAndValidate()) {
                      FlowView.of(context).next();
                    }
                  },
                ),
                child: AddCompanyStepOne(
                  formKey: _formKey,
                ),
              ),
              FlowScreen(
                title: 'Add Your Company',
                anchor: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: FlowScreenDefaultAnchor(
                        isOutlined: true,
                        buttonText: 'Skip',
                        onPressed: (context) {
                          FlowView.of(context).next();
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: FlowScreenDefaultAnchor(
                        buttonText: 'Next',
                        onPressed: (context) {
                          if (_formKey.currentState!.saveAndValidate()) {
                            FlowView.of(context).next();
                          }
                        },
                      ),
                    ),
                  ],
                ),
                child: AddCompanyStepTwo(
                  formKey: _formKey,
                ),
              ),
              FlowScreen(
                title: 'Add Your Company',
                anchor: FlowScreenDefaultAnchor(
                  buttonText: 'Add Company',
                  onPressed: (context) {
                    if (_formKey.currentState!.saveAndValidate()) {
                      logger.i(_formKey.currentState!.value);
                      FlowView.of(context).next();
                    }
                  },
                ),
                child: AddCompanyStepThree(
                  formKey: _formKey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
