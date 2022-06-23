part of 'company_screen_bloc.dart';

abstract class CompanyScreenState extends Equatable {
  const CompanyScreenState();

  @override
  List<Object> get props => [];
}

class CompanyScreenInitial extends CompanyScreenState {}

class CompanyScreenLoading extends CompanyScreenState {}

class CompanyScreenLoaded extends CompanyScreenState {
  final RecruiterCompany recruiterCompany;
  const CompanyScreenLoaded({required this.recruiterCompany});
}

class CompanyScreenError extends CompanyScreenState {
  final String errorMessage;

  const CompanyScreenError({required this.errorMessage});
}
