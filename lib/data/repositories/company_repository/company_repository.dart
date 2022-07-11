import 'package:doxa_mobile_app/models/models.dart';

abstract class CompanyRepository {
  Future<Company> getCompanyById(int companyId);
  Future<Company> updateCompany(Company newCompanyData);
}
