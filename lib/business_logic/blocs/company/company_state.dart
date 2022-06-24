part of 'company_bloc.dart';

abstract class CompanyState extends Equatable {
  const CompanyState();
  
  @override
  List<Object> get props => [];
}

class CompanyInitial extends CompanyState {}

class CompanyLoading extends CompanyState {}

class CompanyLoaded extends CompanyState {
  final String jobTitle;
  const CompanyLoaded({
    required this.jobTitle,
  });
  
  @override
  List<Object> get props => [jobTitle];
}
