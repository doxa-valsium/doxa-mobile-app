import 'package:bloc/bloc.dart';
import 'package:doxa_mobile_app/data/exceptions/company_exception.dart';
import 'package:doxa_mobile_app/data/repositories/company_repository/company_repository.dart';
import 'package:doxa_mobile_app/data/repositories/storage_repository/storage_repository.dart';
import 'package:doxa_mobile_app/data/repositories/user_repository/user_repository.dart';
import 'package:doxa_mobile_app/logger.dart';
import 'package:doxa_mobile_app/models/models.dart';
import 'package:doxa_mobile_app/services/app_message_service.dart';
import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

part 'company_profile_event.dart';
part 'company_profile_state.dart';

class CompanyProfileBloc extends Bloc<CompanyScreenEvent, CompanyScreenState> {
  final CompanyRepository _companyRepository;
  final UserRepository _userRepository;
  final StorageRepository _storageRepository;
  CompanyProfileBloc({required StorageRepository storageRepository, required CompanyRepository companyRepository, required UserRepository userRepository})
      : _companyRepository = companyRepository,
        _userRepository = userRepository,
        _storageRepository = storageRepository,
        super(CompanyScreenInitial()) {
    on<FetchCompanyScreenData>(_onFetchCompanyScreenData);
    on<UpdateCompanyLogo>(_onUpdateCompanyLogo);
  }

  Future<void> _onUpdateCompanyLogo(UpdateCompanyLogo event, Emitter<CompanyScreenState> emit) async {
    emit(CompanyScreenLoaded(company: event.company, isCompanyLogoUpdating: true));
    try {
      final User user = await _userRepository.loggedInUser.first;
      final String logoUrl = await _storageRepository.uploadImage(event.logo, ImageType.companyLogo, user);
      final Company updatedCompany = await _companyRepository.updateCompany(event.company.copyWith(logoImageUrl: logoUrl));
      emit(CompanyScreenLoaded(company: updatedCompany, isCompanyLogoUpdating: false));
    } on CompanyException catch (e) {
      emit(CompanyScreenLoaded(company: event.company, isCompanyLogoUpdating: false));
      emit(CompanyScreenError(errorMessage: e.message));
    } catch (e) {
      logger.e(e);
      emit(CompanyScreenLoaded(company: event.company, isCompanyLogoUpdating: false));
      emit(const CompanyScreenError(errorMessage: AppMessageService.genericErrorMessage));
    }
  }

  Future<void> _onFetchCompanyScreenData(FetchCompanyScreenData event, Emitter<CompanyScreenState> emit) async {
    try {
      emit(CompanyScreenLoading());
      final Recruiter user = await _userRepository.loggedInUser.first as Recruiter;
      if (user.companyId != null) {
        final Company company = await _companyRepository.getCompanyById(user.companyId!);
        emit(CompanyScreenLoaded(company: company));
      } else {
        emit(const CompanyScreenError(errorMessage: 'User has no company'));
      }
    } on CompanyException catch (e) {
      emit(CompanyScreenError(errorMessage: e.message));
    } catch (e) {
      logger.e(e);
      emit(const CompanyScreenError(errorMessage: AppMessageService.genericErrorMessage));
    }
  }
}
