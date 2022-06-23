import 'package:doxa_mobile_app/models/models.dart';

abstract class CompanyRepository {
  Future<RecruiterCompany> getRecruiterCompany(String recuriterUserId);
}
