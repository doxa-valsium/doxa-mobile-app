import 'package:doxa_mobile_app/constants.dart';
import 'package:doxa_mobile_app/data/exceptions/company_exception.dart';
import 'package:doxa_mobile_app/data/repositories/company_repository/company_repository.dart';
import 'package:doxa_mobile_app/logger.dart';
import 'package:doxa_mobile_app/models/models.dart';
import 'package:doxa_mobile_app/models/recruiter_company.dart';

class SupabaseCompanyRepository implements CompanyRepository {
  @override
  Future<RecruiterCompany> getRecruiterCompany(String recuriterUserId) async {
    final response = await kSupabase
        .from('company_recruiters')
        .select(
            'company:companies(id,name,bio,logo_url,cover_image_url, industry:industries!industry(id,label), location_city:cities!location_city(id,label), phone, website), joined_at, is_admin, job_title:job_titles(id,label)')
        .eq('recruiter_uuid', recuriterUserId)
        .single()
        .execute();
    if (response.hasError) {
      logger.e(response.error!.message);
      throw CompanyException(response.error!.message);
    }
    logger.i(response.data);
    return RecruiterCompany.fromMap(response.data);
  }
}
