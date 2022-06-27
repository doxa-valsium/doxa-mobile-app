part of 'create_jobs_bloc.dart';

abstract class CreateJobsEvent extends Equatable {
  const CreateJobsEvent();

  @override
  List<Object> get props => [];
}

class CreateJobs extends CreateJobsEvent {
  final Map<String,dynamic> jobFormData;
  final VoidCallback onComplete;
  const CreateJobs({required this.jobFormData,required this.onComplete});
  @override
  List<Object> get props => [jobFormData,onComplete];
}