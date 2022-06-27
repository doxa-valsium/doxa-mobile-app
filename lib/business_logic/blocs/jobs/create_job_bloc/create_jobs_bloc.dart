import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:doxa_mobile_app/data/exceptions/jobs_exception.dart';
import 'package:doxa_mobile_app/data/repositories/jobs_repository/jobs_repository.dart';
import 'package:doxa_mobile_app/data/repositories/user_repository/user_repository.dart';
import 'package:doxa_mobile_app/logger.dart';
import 'package:doxa_mobile_app/models/job.dart';
import 'package:doxa_mobile_app/models/user.dart';
import 'package:doxa_mobile_app/services/app_message_service.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'create_jobs_event.dart';
part 'create_jobs_state.dart';

class CreateJobsBloc extends Bloc<CreateJobsEvent, CreateJobsState> {
  final UserRepository _userRepository;
  final JobsRepository _jobsRepository;

  CreateJobsBloc({
    required UserRepository userRepository,
    required JobsRepository jobsRepository,
  })  : _userRepository = userRepository,
        _jobsRepository = jobsRepository,
        super(CreateJobsScreenInitial()) {
    on<CreateJobs>((event, emit) async {
      emit(CreateJobsScreenLoading());
      try {
        User? user = _userRepository.getLoggedInUser;
        logger.d(user);

         await _jobsRepository.createJob(jobFormData: event.jobFormData, recruiterId: '${user?.userId}');

        event.onComplete();

        emit(CreateJobsScreenLoaded());
      } on JobsException catch (e) {
        emit(CreateJobsScreenError(errorMessage: e.message));
      } catch (e) {
        logger.e(e);
        emit(const CreateJobsScreenError(errorMessage: AppMessageService.genericErrorMessage));
      }
    });
  }
}
