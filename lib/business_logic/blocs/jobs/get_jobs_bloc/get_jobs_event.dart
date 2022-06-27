part of 'get_jobs_bloc.dart';

abstract class GetJobsEvent extends Equatable {
  const GetJobsEvent();

  @override
  List<Object> get props => [];
}

class FetchJobs extends GetJobsEvent {}

