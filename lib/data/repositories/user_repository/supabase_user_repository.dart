import 'dart:async';

import 'package:doxa_mobile_app/constants.dart';
import 'package:doxa_mobile_app/data/exceptions/auth_exception.dart';
import 'package:doxa_mobile_app/data/repositories/user_repository/user_repository.dart';
import 'package:doxa_mobile_app/models/models.dart';
import 'package:doxa_mobile_app/models/user.dart' as local_user;
import 'package:rxdart/rxdart.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as supabase_user;

class SupabaseUserRepository extends UserRepository {
  final BehaviorSubject<local_user.User> _userStreamController = BehaviorSubject<local_user.User>();

  @override
  Stream<local_user.User> get loggedInUser => _userStreamController.stream.asBroadcastStream();

  @override
  Future<void> getUser() async {
    final supabase_user.User? supabaseUser = kSupabase.auth.currentUser;
    if (supabaseUser == null) return;
    local_user.User? user = await _fromSupabaseUserToModelUser(supabaseUser);
    if (user != null) {
      _userStreamController.add(user);
    }
  }

  @override
  Future<void> createNewUser({required Map<String, dynamic> user, required String uuid}) async {
    user['uuid'] = uuid;
    user['date_of_birth'] = kDateFormat.parse(user['date_of_birth']).toIso8601String();
    final response = await kSupabase.from('users').insert([user]).execute();
    if (response.error != null) {
      throw AuthException(response.error!.message);
    }
  }

  Future<local_user.User?> _fromSupabaseUserToModelUser(supabase_user.User user) async {
    final String uuid = user.id;

    final response = await kSupabase.rpc('get_user', params: {'uuid': uuid}).execute();

    if (response.error != null) {
      throw AuthException(response.error!.message);
    } else {
      List<String> dateOfBirthParts = response.data[0]['date_of_birth'].toString().split('-');
      DateTime dateOfBirth = DateTime(int.parse(dateOfBirthParts[0]), int.parse(dateOfBirthParts[1]), int.parse(dateOfBirthParts[2]));
      Map<String, dynamic> user = Map<String, dynamic>.from(response.data[0]);
      user['user_type'] = response.data[0]['user_type'] == 'candidate' ? local_user.UserType.candidate : local_user.UserType.recruiter;
      user['gender'] = Gender(label: response.data[0]['gender']);
      user['date_of_birth'] = dateOfBirth;
      user['uuid'] = uuid;
      if (user['user_type'] == UserType.candidate) {
        return await _getCandidateData(user);
      } else {
        return await _getRecruiterData(user);
      }
    }
  }

  Future<User> _getCandidateData(Map<String, dynamic> user) async {
    await Future.delayed(kMockFutureDelay);

    return local_user.User.fromMap(user);
  }

  Future<User> _getRecruiterData(Map<String, dynamic> user) async {
    final response =
        await kSupabase.from('company_recruiters').select('company_id:company, is_admin, job_title:job_titles(id,label)').eq('recruiter_uuid', user['uuid']).single().execute();
    final Map<String, dynamic>? recruiter = response.data;
    if(recruiter != null) {
      user.addAll(recruiter);
    }
    return local_user.User.fromMap(user);
  }

  @override
  void dispose() => _userStreamController.close();
}
