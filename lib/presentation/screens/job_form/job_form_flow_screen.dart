import 'package:doxa_mobile_app/logger.dart';
import 'package:doxa_mobile_app/presentation/screens/job_form/job_form_step_four.dart';
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
  final List<Map<String, dynamic>> qualifications = [];
  final List<String> skills = [];

  JobFormFlowScreen({Key? key}) : super(key: key);

  bool containsQualification(Map qualification) {
    // This checks if the qualification is valid means already exists or not
    bool valid = false;
    for (var element in qualifications) {
      if (element['qualificationDegree'] == qualification['qualificationDegree'] &&
          element['qualificationMajor'] == qualification['qualificationMajor'] &&
          element['qualificationExperienceType'] == qualification['qualificationExperienceType']) {
        valid = true;
      }
    }
    return valid;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FormBuilder(
          key: _formKey,
          child: FlowView(
            steps: [
              FlowScreen(
                title: 'Create a New Job',
                anchor: FlowScreenDefaultAnchor(
                  buttonText: 'Continue',
                  onPressed: (context) {
                    if (_formKey.currentState!.saveAndValidate()) {
                    FlowView.of(context).next();
                    }
                  },
                ),
                child: JobFormStepOne(
                  formKey: _formKey,
                ),
              ),
              FlowScreen(
                title: 'Create a New Job',
                anchor: FlowScreenDefaultAnchor(
                  buttonText: 'Continue',
                  onPressed: (context) {
                    if (_formKey.currentState!.saveAndValidate()) {
                    FlowView.of(context).next();
                    }
                  },
                ),
                child: JobFormStepTwo(
                  formKey: _formKey,
                ),
              ),
              FlowScreen(
                title: 'Create a New Job',
                anchor: FlowScreenDefaultAnchor(
                  buttonText: 'Continue',
                  onPressed: (context) {
                    if (_formKey.currentState!.saveAndValidate()) {
                      if (qualifications.isNotEmpty) FlowView.of(context).next();
                    }
                  },
                ),
                child: JobFormStepThree(
                  qualifications: qualifications,
                  formKey: _formKey,
                  onAdd: (map) {
                    if (!containsQualification(map)) {
                      qualifications.add(map);
                    }
                  },
                  onDelete: (map) {
                    if (containsQualification(map)) {
                      qualifications.removeWhere((element) =>
                          element['qualificationDegree'] == map['qualificationDegree'] &&
                          element['qualificationMajor'] == map['qualificationMajor'] &&
                          element['qualificationExperienceType'] == map['qualificationExperienceType']);
                    }
                  },
                ),
              ),
              FlowScreen(
                  title: 'Create a New Job',
                  anchor: FlowScreenDefaultAnchor(
                    buttonText: 'Continue',
                    onPressed: (context) {
                      if (_formKey.currentState!.saveAndValidate()) {
                        if (skills.isNotEmpty) {
                          Map<String, dynamic> jobFormData = Map<String, dynamic>.of(_formKey.currentState!.value);
                          jobFormData['qualifications'] = qualifications;
                          jobFormData['skills'] = skills;
                          logger.i(jobFormData);
                          FlowView.of(context).next();
                        }
                      }
                    },
                  ),
                  child: JobFormStepFour(
                    skills: skills,
                    formKey: _formKey,
                    onSkillAdd: (skill) {
                      if (!skills.contains(skill)) {
                        skills.add(skill);
                      }
                    },
                    onSkillDelete: (skill) {
                      if (skills.contains(skill)) {
                        skills.removeWhere((element) => element == skill);
                      }
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
