import 'package:doxa_mobile_app/business_logic/cubits/job_form_add_qualification_button/add_qualification_button_qubit.dart';
import 'package:doxa_mobile_app/business_logic/cubits/job_form_add_qualification_button/add_qualification_button_state.dart';
import 'package:doxa_mobile_app/logger.dart';
import 'package:doxa_mobile_app/presentation/screens/job_form/local_widgets/add_qualification_form.dart';
import 'package:doxa_mobile_app/presentation/screens/job_form/local_widgets/qualification.dart';
import 'package:doxa_mobile_app/presentation/screens/job_form/local_widgets/qualification_card.dart';
import 'package:doxa_mobile_app/presentation/widgets/flow_view/flow_view.dart';
import 'package:doxa_mobile_app/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';

class AddQualificationButton extends StatelessWidget {
  final FocusNode focusNode;
  final Function(Map<String, dynamic>) onAdd;
  final Function(Map<String, dynamic>) onDelete;
  final List<Map<String, dynamic>> qualifications;

  const AddQualificationButton({Key? key, required this.focusNode, required this.onAdd, required this.onDelete, required this.qualifications}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddQualificationButtonCubit>(
      create: (context) => AddQualificationButtonCubit(
          buttonHeight: 54,
          isExpanded: false,
          showContainers: false,
          isEditing: false,
          qualifications:
              qualifications.map((e) => Qualification(degree: e['qualificationDegree'], major: e['qualificationMajor'], isRequired: e['qualificationExperienceType'])).toList(),
          context: context),
      child: BlocBuilder<AddQualificationButtonCubit, AddQualificationButtonState>(
        builder: (context, state) {
          final cubit = BlocProvider.of<AddQualificationButtonCubit>(context);
          final flowViewContext = FlowView.of(context);
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (state.qualifications.where((element) => !element.isRequired).isNotEmpty)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Required", style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant)),
                    ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: state.qualifications.length,
                        itemBuilder: (context, index) {
                          return !state.qualifications[index].isRequired
                              ? QualificationCard(
                                  qualification: state.qualifications[index],
                                  onDelete: () {
                                    cubit.deleteQualification(state.qualifications[index]);
                                    onDelete(state.qualifications[index].toMap());
                                  },
                                )
                              : const SizedBox();
                        }),
                  ],
                ),
              if (state.qualifications.where((x) => x.isRequired).isNotEmpty)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 8),
                    Text("Preferred", style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant)),
                    ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: state.qualifications.length,
                        itemBuilder: (context, index) {
                          return state.qualifications[index].isRequired
                              ? QualificationCard(
                                  qualification: state.qualifications[index],
                                  onDelete: () {
                                    logger.i(cubit.state.qualifications);
                                    cubit.deleteQualification(state.qualifications[index]);
                                    onDelete(state.qualifications[index].toMap());
                                    logger.i(cubit.state.qualifications);
                                  },
                                )
                              : const SizedBox();
                        }),
                  ],
                ),
              const SizedBox(height: 8),
              GestureDetector(
                onTap: () async {
                  if (focusNode.hasFocus) focusNode.unfocus();
                  if (!cubit.state.isExpanded) {
                    cubit.expand();
                    flowViewContext.setIsLoading(true);
                    await Future.delayed(const Duration(milliseconds: 300));
                    flowViewContext.setIsLoading(false);
                    cubit.showContainer();
                  }
                },
                child: AnimatedContainer(
                  decoration: Styles.containerStyle,
                  duration: const Duration(milliseconds: 200),
                  height: state.buttonHeight,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: state.isExpanded ? MainAxisAlignment.start : MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: state.isExpanded ? MainAxisAlignment.start : MainAxisAlignment.center,
                          children: [
                            if (!state.isExpanded)
                              Iconify(
                                Ic.baseline_add_circle_outline,
                                size: 24,
                                color: Theme.of(context).colorScheme.onSurfaceVariant,
                              ),
                            const SizedBox(
                              width: 12,
                            ),
                            Text(
                              "Add Qualification",
                              style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
                            ),
                          ],
                        ),
                        Offstage(
                          offstage: !state.showContainers,
                          child: AddQualificationForm(
                            state: state,
                            onAdd: (map) {
                              cubit.addQualification(Qualification.fromMap(map));
                              cubit.collapse();
                              onAdd(map);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
