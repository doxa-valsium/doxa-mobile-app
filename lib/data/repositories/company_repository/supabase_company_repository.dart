import 'package:doxa_mobile_app/data/repositories/company_repository/company_repository.dart';
import 'dart:async';
import 'package:doxa_mobile_app/constants.dart';
import 'package:doxa_mobile_app/logger.dart';
import 'package:supabase/supabase.dart' as supabase_root;
import 'package:supabase/supabase.dart';

class SupabaseCompanyRepository extends CompanyRepository {
  @override
  Future<String?> getJobTitle() async {
    // get job title from supabase instance
    final res = await kSupabase.from('company_recruiters').select('title').eq('recruiter_uuid', 'e88431ab-80a9-4fd5-abce-df16093aafc3').execute();

    logger.i("CHocolate");

    final data = res.data;
    logger.d(data);
    final error = res.error;
    return null;
  }
}
