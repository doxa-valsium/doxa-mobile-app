part of 'jobs_bloc.dart';

abstract class JobsState extends Equatable {
  const JobsState();

  @override
  List<Object> get props => [];
}

class JobsScreenInitial extends JobsState {}

class JobsScreenLoading extends JobsState {}

class JobsScreenLoaded extends JobsState {
  final List<Job> jobs;
  const JobsScreenLoaded({
    required this.jobs,
  });
}

class JobsScreenError extends JobsState {
  final String errorMessage;
  const JobsScreenError({required this.errorMessage});
}
