import 'package:bloc/bloc.dart';
import 'package:doxa_mobile_app/data/exceptions/jobs_exception.dart';
import 'package:doxa_mobile_app/data/repositories/jobs_repository/jobs_repository.dart';
import 'package:doxa_mobile_app/data/repositories/user_repository/user_repository.dart';
import 'package:doxa_mobile_app/logger.dart';
import 'package:doxa_mobile_app/models/job.dart';
import 'package:doxa_mobile_app/models/user.dart';
import 'package:doxa_mobile_app/services/app_message_service.dart';
import 'package:equatable/equatable.dart';

part 'get_jobs_event.dart';
part 'get_jobs_state.dart';

class GetJobsBloc extends Bloc<GetJobsEvent, GetJobsState> {
  final UserRepository _userRepository;
  final JobsRepository _jobsRepository;

  GetJobsBloc({
    required UserRepository userRepository,
    required JobsRepository jobsRepository,
  })  : _userRepository = userRepository,
        _jobsRepository = jobsRepository,
        super(GetJobsScreenInitial()) {
    on<FetchJobs>((event, emit) async {
      emit(GetJobsScreenLoading());
      try {
        User? user = _userRepository.getLoggedInUser;
        logger.d(user);
        List<Job> jobs = await _jobsRepository.getRecruiterJobs(recruiterId: user?.userId);
        logger.d(jobs);
        emit(GetJobsScreenLoaded(jobs: jobs));
      } on JobsException catch (e) {
        emit(GetJobsScreenError(errorMessage: e.message));
      } catch (e) {
        logger.e(e);
        emit(const GetJobsScreenError(errorMessage: AppMessageService.genericErrorMessage));
      }
    });
  }
}
