// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'company_profile_bloc.dart';

abstract class CompanyScreenState extends Equatable {
  const CompanyScreenState();

  @override
  List<Object> get props => [];
}

class CompanyScreenInitial extends CompanyScreenState {}

class CompanyScreenLoading extends CompanyScreenState {}

class CompanyScreenLoaded extends CompanyScreenState {
  final Company company;
  final bool isCompanyLogoUpdating;
  final bool isCompanyBannerUpdating;

  const CompanyScreenLoaded({this.isCompanyLogoUpdating = false, this.isCompanyBannerUpdating = false, required this.company});

  @override
  List<Object> get props => [company, isCompanyLogoUpdating, isCompanyBannerUpdating];

  CompanyScreenLoaded copyWith({
    Company? company,
    bool? isCompanyLogoUpdating,
    bool? isCompanyBannerUpdating,
  }) {
    return CompanyScreenLoaded(
      company: company ?? this.company,
      isCompanyLogoUpdating: isCompanyLogoUpdating ?? this.isCompanyLogoUpdating,
      isCompanyBannerUpdating: isCompanyBannerUpdating ?? this.isCompanyBannerUpdating,
    );
  }
}

class CompanyScreenError extends CompanyScreenState {
  final String errorMessage;

  const CompanyScreenError({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
