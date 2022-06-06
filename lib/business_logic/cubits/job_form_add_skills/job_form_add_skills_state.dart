import 'package:equatable/equatable.dart';

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
