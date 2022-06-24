import 'package:bloc/bloc.dart';
import 'package:doxa_mobile_app/data/repositories/company_repository/company_repository.dart';
import 'package:equatable/equatable.dart';

part 'company_event.dart';
part 'company_state.dart';

class CompanyBloc extends Bloc<CompanyEvent, CompanyState> {
  final CompanyRepository _companyRepository;

  CompanyBloc({
    required CompanyRepository companyRepository,
  })  : _companyRepository = companyRepository,
        super(CompanyInitial()) {
    on<FetchJobTitle>((event, emit) async {
      emit(CompanyLoading());

      // await _companyRepository.getJobTitle();
      emit(const CompanyLoaded(jobTitle: 'Software Engineer'));
    });
  }
}
