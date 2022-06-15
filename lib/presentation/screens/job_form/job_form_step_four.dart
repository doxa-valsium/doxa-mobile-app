import 'package:doxa_mobile_app/business_logic/cubits/job_form_add_skills/job_form_add_skills_cubit.dart';
import 'package:doxa_mobile_app/logger.dart';
import 'package:doxa_mobile_app/presentation/screens/job_form/local_widgets/custom_chip_dynamic_skill.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_formbuilder_dropdown.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_formbuilder_textfield.dart';
import 'package:doxa_mobile_app/presentation/widgets/formfield_title_with_info.dart';
import 'package:doxa_mobile_app/presentation/widgets/selection_list_screen/list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';


class JobFormStepFour extends StatelessWidget {
  final GlobalKey<FormBuilderState> formKey;
  final Function(String) onSkillAdd;
  final Function(String) onSkillDelete;
  final List<String> skills;

  const JobFormStepFour({Key? key, required this.skills, required this.onSkillAdd, required this.onSkillDelete, required this.formKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<JobFormAddSkillsCubit>(
      create: (context) => JobFormAddSkillsCubit(
        context: context,
        skills: skills,
      ),
      child: BlocBuilder<JobFormAddSkillsCubit, JobFormAddSkillsState>(builder: (context, state) {
        final cubit = BlocProvider.of<JobFormAddSkillsCubit>(context);
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 28.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const JobFieldTitleWithInfo(
                title: "Industry",
              ),
              const SizedBox(height: 16),
              CustomFormBuilderDropDown(
                holdVal: true,
                name: "industry",
                labelText: "Industry",
                validators: FormBuilderValidators.required(),
                child: const ListScreen(
                  type: FormListType.staticList,
                  title: "Industry",
                ),
              ),
              const SizedBox(height: 44),
              const JobFieldTitleWithInfo(
                title: "Salary Range",
                isOptional: true,
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.3,
                    child: CustomFormBuilderTextField(
                        name: "starting_range",
                        focusNode: FocusNode(),
                        controller: TextEditingController(),
                        labelText: "From",
                        keyboardType: TextInputType.number,
                        validators: FormBuilderValidators.compose([
                          FormBuilderValidators.numeric(),
                        ])),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.3,
                    child: CustomFormBuilderTextField(
                        name: "ending_range",
                        focusNode: FocusNode(),
                        controller: TextEditingController(),
                        keyboardType: TextInputType.number,
                        labelText: "To",
                        validators: FormBuilderValidators.compose([
                          FormBuilderValidators.numeric(),
                        ])),
                  ),
                ],
              ),
              const SizedBox(height: 44),
              const JobFieldTitleWithInfo(
                title: "Skills",
              ),
              const SizedBox(height: 16),
              if (cubit.state.skills.isNotEmpty)
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: cubit.state.skills.map((skill) {
                    return CustomChipDynamicSkill(
                      name: skill,
                      onDelete: () {
                        cubit.deleteSkill(skill);
                        onSkillDelete(skill);
                      },
                    );
                  }).toList(),
                ),
              const SizedBox(height: 16),
              CustomFormBuilderDropDown(
                name: "skills",
                labelText: "Add Skills",
                forSkills: true,
                onSkillAdd: (skill) {
                  logger.i(skill);
                  cubit.addSkill(skill);
                  onSkillAdd(skill);
                },
                child: const ListScreen(
                  type: FormListType.dynamicList,
                  title: "Skills",
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
