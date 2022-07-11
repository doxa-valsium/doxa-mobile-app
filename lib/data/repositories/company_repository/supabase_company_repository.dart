import 'package:doxa_mobile_app/constants.dart';
import 'package:doxa_mobile_app/data/exceptions/company_exception.dart';
import 'package:doxa_mobile_app/data/repositories/company_repository/company_repository.dart';
import 'package:doxa_mobile_app/logger.dart';
import 'package:doxa_mobile_app/models/models.dart';
import 'package:doxa_mobile_app/services/app_message_service.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseCompanyRepository implements CompanyRepository {
  @override
  Future<Company> getCompanyById(int companyId) async {
    const String query = '''
        id,
        name,
        bio,
        industry(id,label),
        logo_url,
        cover_image_url,
        website,
        phone,
        location_city(id,label),
        company_recruiters(
          user:users!recruiter_uuid(first_name, last_name, profile_photo),
          is_admin,
          job_title:title(id,label)
          )
      ''';
    final response = await kSupabase.from('companies').select(query).eq('id', companyId).single().execute();
    if (response.hasError) {
      throw CompanyException(response.error!.message);
    } else {
      return Company.fromMap(response.data);
    }
  }

  @override
  Future<Company> updateCompany(Company newCompanyData) async {
    Map<String, dynamic> data = newCompanyData.toMap();
    final response = await kSupabase.from('companies').update(data).eq('id', newCompanyData.companyId).execute();
    if (response.hasError) {
      logger.e('Error : ${response.error!.message}');
      throw CompanyException(response.error!.message);
    } else {
      logger.i('Response : ${response.data}');
      return newCompanyData;
    }
  }
}
