import 'package:doxa_mobile_app/constants.dart';
import 'package:doxa_mobile_app/data/exceptions/jobs_exception.dart';
import 'package:doxa_mobile_app/data/repositories/jobs_repository/jobs_repository.dart';
import 'package:doxa_mobile_app/logger.dart';
import 'package:doxa_mobile_app/models/qualification.dart';

import '../../../models/job.dart';

class SupabaseJobsRepository extends JobsRepository {
  List<Job> jobs = [];
  @override
  Future<List<Job>> getRecruiterJobs({required String? recruiterId}) async {
    final response = await kSupabase.rpc('get_recruiter_jobs', params: {'recruiter': recruiterId}).execute();
    if (response.hasError) {
      throw JobsException(response.error!.message);
    } else {
      logger.i("Fetched Jobs Data Successfully!");
      logger.d(response.data);

      jobs = response.data.map<Job>((job) => Job.fromJson(job)).toList();
      return jobs;
    }
  }

  @override
  Future<void> createJob({required Map<String, dynamic> jobFormData, required String? recruiterId}) async {
    Map<String, dynamic> job = {
      'title': jobFormData['title'].id,
      'headline': '${jobFormData['headline']}'.trim(),
      'employement_type': jobFormData['employement_type'].id,
      'workplace_type': jobFormData['workplace_type'].id,
      'location_city': jobFormData['location_city'].id,
      'description': '${jobFormData['description']}'.trim(),
      'required_experience': int.parse(jobFormData['required_experience']), //event.jobFormData['required_experience'].toInt(),
      'industry': jobFormData['industry'].id,
      'salary_range_starting': int.parse(jobFormData['salary_range_starting']), //event.jobFormData['salary_range_starting'].toInt(),
      'salary_range_ending': int.parse(jobFormData['salary_range_ending']), //event.jobFormData['salary_range_ending'].toInt(),
      'is_active': true,
      'recruiter': '$recruiterId'.trim(),
      'company': 6 //TODO : this is hardcoded for now but should be dynamic
    };
    final skillsData = jobFormData['skills'];
    final qualificationsData = jobFormData['qualifications'];

    final response = await kSupabase.from('jobs').insert([job]).execute();
    if (response.hasError) {
      throw JobsException(response.error!.message);
    } else {
      logger.i("Job Created Successfully!");
      logger.d(response.data);
      await _createJobSkills(
        skillsData: skillsData,
        jobId: response.data.where((element) => element['id'] != null).first['id'] as int,
      );
      await _createQualifications(
        qualificationsData: qualificationsData,
        jobId: response.data.where((element) => element['id'] != null).first['id'] as int,
      );
    }
  }

  Future<void> _createJobSkills({required final skillsData, required int jobId}) async {
    List<Map<String, dynamic>> skills = [];
    for (int i = 0; i < skillsData.length; ++i) {
      skills.add({
        'skill_id': skillsData[i].id,
        'job_id': jobId,
      });
    }
    logger.d('skills in repo : $skills');
    final response = await kSupabase.from('skills_for_job').insert(skills).execute();
    if (response.hasError) {
      throw JobsException(response.error!.message);
    } else {
      logger.i("Job Skill Created Successfully!");
      logger.d(response.data);
    }
  }

  Future<void> _createQualifications({required final qualificationsData, required int jobId}) async {
    List<Map<String, dynamic>> qualifications = [];
    List<Map<String, dynamic>> qualificationsForJob = [];
    for (int i = 0; i < qualificationsData.length; ++i) {
      qualifications.add({
        'degree': qualificationsData[i]['qualificationDegree'].id,
        'major': qualificationsData[i]['qualificationMajor'].id,
        'is_completed': true,
      });
    }

    final response = await kSupabase.from('qualifications').insert(qualifications).execute();
    if (response.hasError) {
      throw JobsException(response.error!.message);
    } else {
      logger.i("Qualification Created Successfully!");
      logger.d(response.data);
      for (int i = 0; i < response.data.length; ++i) {
        if (qualificationsData[i]['qualificationExperienceType'] == true) {
          qualificationsForJob.add({
            'job_id': jobId,
            'qualification_id': response.data[i]['id'],
            'requirement_type': 'preferred',
          });
        } else {
          qualificationsForJob.add({
            'job_id': jobId,
            'qualification_id': response.data[i]['id'],
            'requirement_type': 'required',
          });
        }
      }
      await _createQualificationsForJob(qualificationsForJobData: qualificationsForJob);
    }
  }

  Future<void> _createQualificationsForJob({required final qualificationsForJobData}) async {
    final response = await kSupabase.from('qualifications_for_job').insert(qualificationsForJobData).execute();
    if (response.hasError) {
      throw JobsException(response.error!.message);
    } else {
      logger.i("Qualification For Job Created Successfully!");
      logger.d(response.data);
    }
  }

  @override
  Future<void> getSingleJob({required String? recruiterId, required int jobId}) async {
    final response = await kSupabase
        .from('jobs,skills_for_job')
        .select(
            'id,job_title:job_titles(id,label),headline,workplace_type:workplace_types(id,label),required_experience,salary_range_starting,salary_range_ending,description,industry:industries(id,label),is_active,company:companies(id,name,bio,industry:industries!companies_industry_foreign(id,label),logo_url,cover_image_url,website,phone,location_city:cities!companies_location_city_fkey(id,label)),recruiter,employement_type:employement_types(id,label),location_city:cities(id,label)')
        .eq('id', jobId)
        .execute();

  // final job = response.data;

   // final skillsResponse = await kSupabase.from('skills_for_job').select('id,skill_id');
    logger.d(response.data);
    logger.d(response.error?.code);
    logger.d(response.error?.message);
    logger.d(response.error?.hint);
    logger.d(response.error?.details);

    // final response = await kSupabase
    //     .from('jobs')
    //     .select('id,job_title:job_titles(id,label),employement_type(id,label),location:location_city(id,label),recruiter,is_active')
    //     .eq('recruiter', recruiter)
    //     .execute();
    //final response = await kSupabase.from('matches').select('*,jobs!inner(*)').eq('job_id', '24').execute(count: CountOption.exact);
    //  final response = await kSupabase.from('matches').select('id').eq('job_id', '24').execute(count: CountOption.exact);
    // logger.d(response.data);
    // logger.d(response.count);
    // return [];

    //throw UnimplementedError();
  }
}
