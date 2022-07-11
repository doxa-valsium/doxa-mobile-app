part of 'company_profile_bloc.dart';

abstract class CompanyScreenEvent extends Equatable {
  const CompanyScreenEvent();

  @override
  List<Object> get props => [];
}

class FetchCompanyScreenData extends CompanyScreenEvent {}

class UpdateCompanyLogo extends CompanyScreenEvent {
  final Company company;
  final XFile logo;

  const UpdateCompanyLogo({required this.company, required this.logo});

  @override
  List<Object> get props => [logo, company];
}

class UpdateCompanyBanner extends CompanyScreenEvent {
  final XFile banner;
  final Company company;

  const UpdateCompanyBanner({required this.company, required this.banner});

  @override
  List<Object> get props => [banner, company];
}
