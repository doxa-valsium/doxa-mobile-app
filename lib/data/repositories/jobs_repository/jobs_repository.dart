import 'package:doxa_mobile_app/models/job.dart';

abstract class JobsRepository {
  Future<List<Job>> getRecruiterJobs({required String? recruiterId});
  Future<void> createJob({required Map<String, dynamic> jobFormData, required String? recruiterId});
  Future<void> getSingleJob({required String? recruiterId, required int jobId});
}
