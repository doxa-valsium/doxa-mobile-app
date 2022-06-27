part of 'create_jobs_bloc.dart';


abstract class CreateJobsState extends Equatable {
  const CreateJobsState();

  @override
  List<Object> get props => [];
}

class CreateJobsScreenInitial extends CreateJobsState {}

class CreateJobsScreenLoading extends CreateJobsState {}

class CreateJobsScreenLoaded extends CreateJobsState {
}

class CreateJobsScreenError extends CreateJobsState {
  final String errorMessage;
  const CreateJobsScreenError({required this.errorMessage});
}
