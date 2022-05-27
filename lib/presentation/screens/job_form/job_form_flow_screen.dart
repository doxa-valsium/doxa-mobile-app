import 'package:doxa_mobile_app/presentation/screens/job_form/job_form_step_one.dart';
import 'package:doxa_mobile_app/presentation/screens/job_form/job_form_step_three.dart';
import 'package:doxa_mobile_app/presentation/screens/job_form/job_form_step_two.dart';
import 'package:doxa_mobile_app/presentation/widgets/flow_view/flow_screen.dart';
import 'package:doxa_mobile_app/presentation/widgets/flow_view/flow_screen_widgets.dart';
import 'package:doxa_mobile_app/presentation/widgets/flow_view/flow_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class JobFormFlowScreen extends StatelessWidget {
  static const String route = 'job-form-flow-screen';
  final _formKey = GlobalKey<FormBuilderState>();
  JobFormFlowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FormBuilder(
          // autovalidateMode: AutovalidateMode.on
          // ,
          autoFocusOnValidationFailure: true,
          key: _formKey,
          child: FlowView(
            steps: [
              FlowScreen(
                title: 'Create a New Job',
                anchor: FlowScreenDefaultAnchor(
                  buttonText: 'Continue',
                  onPressed: (context) {
                    // if (_formKey.currentState!.saveAndValidate()) {
                    // print(_formKey.currentState);
                    FlowView.of(context).next();
                    // }
                  },
                ),
                child: const JobFormStepOne(),
              ),
              FlowScreen(
                title: 'Create a New Job',
                anchor: FlowScreenDefaultAnchor(
                  buttonText: 'Continue',
                  onPressed: (context) {
                    // if (_formKey.currentState!.saveAndValidate()) {
                    // print(_formKey.currentState);
                    FlowView.of(context).next();
                    // }
                  },
                ),
                child: const JobFormStepTwo(),
              ),
              FlowScreen(
                title: 'Create a New Job',
                anchor: FlowScreenDefaultAnchor(
                  buttonText: 'Continue',
                  onPressed: (context) {
                    if (_formKey.currentState!.saveAndValidate()) {
                      // print(_formKey.currentState);
                      FlowView.of(context).next();
                    }
                  },
                ),
                child: const JobFormStepThree(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
