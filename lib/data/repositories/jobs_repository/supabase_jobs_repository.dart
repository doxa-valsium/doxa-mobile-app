import 'package:doxa_mobile_app/constants.dart';
import 'package:doxa_mobile_app/data/exceptions/jobs_exception.dart';
import 'package:doxa_mobile_app/data/repositories/jobs_repository/jobs_repository.dart';
import 'package:doxa_mobile_app/logger.dart';

import '../../../models/job.dart';

class SupabaseJobsRepository extends JobsRepository {
  List<Job>? jobs;
  @override
  getRecruiterJobs({required String? recruiter}) async {
    final response = await kSupabase.rpc('get_recruiter_jobs', params: {'recruiter': recruiter}).execute();

    if (response.hasError) {
      throw JobsException(response.error!.message);
    } else {
      logger.i("Fetched Jobs Data Successfully!");
      logger.d(response.data);
    }
  }
}
