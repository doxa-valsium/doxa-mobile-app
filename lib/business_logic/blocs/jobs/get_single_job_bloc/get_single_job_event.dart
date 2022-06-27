part of 'get_single_job_bloc.dart';

abstract class GetSingleJobEvent extends Equatable {
  const GetSingleJobEvent();

  @override
  List<Object> get props => [];
}

class FetchSingleJob extends GetSingleJobEvent {
  final int jobId;
  const FetchSingleJob({required this.jobId});

  @override
  List<Object> get props => [jobId];
}
