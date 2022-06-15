part of 'job_form_add_skills_cubit.dart';

class JobFormAddSkillsState extends Equatable {
  final List<String> skills;

  const JobFormAddSkillsState({required this.skills});

  @override
  List<Object> get props => [skills];

  JobFormAddSkillsState copyWith({List<String>? skills}) {
    return JobFormAddSkillsState(
      skills: skills ?? this.skills,
    );
  }
}
