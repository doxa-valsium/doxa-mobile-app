
import 'package:bloc/bloc.dart';
import 'package:doxa_mobile_app/data/exceptions/company_exception.dart';
import 'package:doxa_mobile_app/data/repositories/company_repository/company_repository.dart';
import 'package:doxa_mobile_app/data/repositories/user_repository/user_repository.dart';
import 'package:doxa_mobile_app/logger.dart';
import 'package:doxa_mobile_app/models/recruiter_company.dart';
import 'package:doxa_mobile_app/services/app_message_service.dart';
import 'package:equatable/equatable.dart';

part 'company_screen_event.dart';
part 'company_screen_state.dart';

class CompanyScreenBloc extends Bloc<CompanyScreenEvent, CompanyScreenState> {
  final CompanyRepository _companyRepository;
  final UserRepository _userRepository;
  CompanyScreenBloc({required CompanyRepository companyRepository, required UserRepository userRepository})
      : _companyRepository = companyRepository,
      _userRepository = userRepository,
        super(CompanyScreenInitial()) {
    on<FetchCompanyScreenData>((event, emit) async {
      try {
        emit(CompanyScreenLoading());
        // RecruiterCompany recruiterCompany = await _companyRepository.getRecruiterCompany(_userRepository.loggedInUser);
        // emit(CompanyScreenLoaded(recruiterCompany: recruiterCompany));
      } on CompanyException catch (e) {
        emit(CompanyScreenError(errorMessage: e.message));
      } catch (e) {
        logger.e(e);
        emit(const CompanyScreenError(errorMessage: AppMessageService.genericErrorMessage));
      }
    });
  }
}
