import 'package:bloc/bloc.dart';
import 'package:doxa_mobile_app/data/exceptions/jobs_exception.dart';
import 'package:doxa_mobile_app/data/repositories/jobs_repository/jobs_repository.dart';
import 'package:doxa_mobile_app/data/repositories/user_repository/user_repository.dart';
import 'package:doxa_mobile_app/logger.dart';
import 'package:doxa_mobile_app/models/job.dart';
import 'package:doxa_mobile_app/models/user.dart';
import 'package:doxa_mobile_app/services/app_message_service.dart';
import 'package:equatable/equatable.dart';

part 'jobs_event.dart';
part 'jobs_state.dart';

class JobsBloc extends Bloc<JobsEvent, JobsState> {
  final UserRepository _userRepository;
  final JobsRepository _jobsRepository;

  JobsBloc({
    required UserRepository userRepository,
    required JobsRepository jobsRepository,
  })  : _userRepository = userRepository,
        _jobsRepository = jobsRepository,
        super(JobsScreenInitial()) {
    on<FetchJobs>((event, emit) async {
      emit(JobsScreenLoading());
      try {
        User? user = _userRepository.getLoggedInUser;

        List<Job> jobs = await _jobsRepository.getRecruiterJobs(recruiter: user?.userId);
        logger.d(jobs);
        emit(JobsScreenLoaded(jobs: jobs));
      } on JobsException catch (e) {
        emit(JobsScreenError(errorMessage: e.message));
      } catch (e) {
        logger.e(e);
        emit(const JobsScreenError(errorMessage: AppMessageService.genericErrorMessage));
      }
    });
  }
}
