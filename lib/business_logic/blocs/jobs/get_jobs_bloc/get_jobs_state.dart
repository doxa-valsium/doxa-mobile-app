part of 'get_jobs_bloc.dart';

abstract class GetJobsState extends Equatable {
  const GetJobsState();

  @override
  List<Object> get props => [];
}

class GetJobsScreenInitial extends GetJobsState {}

class GetJobsScreenLoading extends GetJobsState {}

class GetJobsScreenLoaded extends GetJobsState {
  final List<Job> jobs;
  const GetJobsScreenLoaded({
    required this.jobs,
  });
  @override
  List<Object> get props => [jobs];
}
class GetJobsScreenError extends GetJobsState {
  final String errorMessage;
  const GetJobsScreenError({required this.errorMessage});
}
