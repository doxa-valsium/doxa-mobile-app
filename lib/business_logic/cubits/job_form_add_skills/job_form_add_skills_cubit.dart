import 'package:bloc/bloc.dart';
import 'package:doxa_mobile_app/models/models.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'job_form_add_skills_state.dart';

class JobFormAddSkillsCubit extends Cubit<JobFormAddSkillsState> {
  BuildContext context;

  JobFormAddSkillsCubit({required List<Skill> skills, required this.context}) : super(JobFormAddSkillsState(skills: skills));

  void addSkill(newSkill) {
    List<Skill> skills = List<Skill>.of(state.skills);
    if (!skills.contains(newSkill)) {
      skills.add(newSkill);
    }
    emit(state.copyWith(skills: skills));
  }

  void deleteSkill(toBeDeletedSkill) {
    List<Skill> skills = List<Skill>.of(state.skills);
    skills.removeWhere((skill) => skill == toBeDeletedSkill);
    emit(state.copyWith(skills: skills));
  }
}
