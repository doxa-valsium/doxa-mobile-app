import 'package:bloc/bloc.dart';
import 'package:doxa_mobile_app/data/exceptions/jobs_exception.dart';
import 'package:doxa_mobile_app/data/repositories/jobs_repository/jobs_repository.dart';
import 'package:doxa_mobile_app/data/repositories/user_repository/user_repository.dart';
import 'package:doxa_mobile_app/logger.dart';
import 'package:doxa_mobile_app/models/job.dart';
import 'package:doxa_mobile_app/models/user.dart';
import 'package:doxa_mobile_app/services/app_message_service.dart';
import 'package:equatable/equatable.dart';

part 'get_single_job_event.dart';
part 'get_single_job_state.dart';

class GetSingleJobBloc extends Bloc<GetSingleJobEvent, GetSingleJobState> {
  final UserRepository _userRepository;
  final JobsRepository _jobsRepository;

  GetSingleJobBloc({
    required UserRepository userRepository,
    required JobsRepository jobsRepository,
  })  : _userRepository = userRepository,
        _jobsRepository = jobsRepository,
        super(GetSingleJobScreenInitial()) {
    on<FetchSingleJob>((event, emit) async {
      emit(GetSingleJobScreenLoading());
      try {
        User? user = _userRepository.getLoggedInUser;
        logger.d(user);
        //Job jobs = await _jobsRepository.getRecruiterJobs(recruiterId: user?.userId);
        //Job job =
        await _jobsRepository.getSingleJob(recruiterId: user?.userId, jobId: event.jobId);
        //logger.d(job);
        //emit(GetSingleJobScreenLoaded(job: job));
      } on JobsException catch (e) {
        emit(GetSingleJobScreenError(errorMessage: e.message));
      } catch (e) {
        logger.e(e);
        emit(const GetSingleJobScreenError(errorMessage: AppMessageService.genericErrorMessage));
      }
    });
  }
}
