part of 'company_screen_bloc.dart';

abstract class CompanyScreenEvent extends Equatable {
  const CompanyScreenEvent();

  @override
  List<Object> get props => [];
}

class FetchCompanyScreenData extends CompanyScreenEvent {}
