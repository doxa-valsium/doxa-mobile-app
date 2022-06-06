import 'package:bloc/bloc.dart';
import 'package:doxa_mobile_app/business_logic/cubits/job_form_add_skills/job_form_add_skills_state.dart';
import 'package:flutter/material.dart';

class JobFormAddSkillsCubit extends Cubit<JobFormAddSkillsState> {
  BuildContext context;

  JobFormAddSkillsCubit({required List<String> skills, required this.context}) : super(JobFormAddSkillsState(skills: skills));

  void addSkill(newSkill) {
    List<String> skills = List<String>.of(state.skills);
    if (!skills.contains(newSkill)) {
      skills.add(newSkill);
    }
    emit(state.copyWith(skills: skills));
  }

  void deleteSkill(toBeDeletedSkill) {
    List<String> skills = List<String>.of(state.skills);
    skills.removeWhere((skill) => skill == toBeDeletedSkill);
    emit(state.copyWith(skills: skills));
  }
}
