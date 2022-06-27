part of 'get_single_job_bloc.dart';

abstract class GetSingleJobState extends Equatable {
  const GetSingleJobState();

  @override
  List<Object> get props => [];
}

class GetSingleJobScreenInitial extends GetSingleJobState {}

class GetSingleJobScreenLoading extends GetSingleJobState {}

class GetSingleJobScreenLoaded extends GetSingleJobState {
  final Job job;
  const GetSingleJobScreenLoaded({
    required this.job,
  });
  @override
  List<Object> get props => [job];
}

class GetSingleJobScreenError extends GetSingleJobState {
  final String errorMessage;
  const GetSingleJobScreenError({required this.errorMessage});
}
