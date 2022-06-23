import 'package:doxa_mobile_app/constants.dart';
import 'package:doxa_mobile_app/data/exceptions/custom_exception.dart';
import 'package:doxa_mobile_app/data/exceptions/match_exception.dart';
import 'package:doxa_mobile_app/data/repositories/match_repository/match_repository.dart';
import 'package:doxa_mobile_app/logger.dart';
import 'package:doxa_mobile_app/models/match.dart' as local_match;

class SupabaseMatchRepository extends MatchRepository {
  @override
  Future<void> closeMatch({required String matchId}) {
    // TODO: implement closeMatch
    throw UnimplementedError();
  }

  @override
  Future<List<local_match.Match>> getInitiatedRecruiterMatches({required String recruiterId}) async {
    List<local_match.Match> result = [];
    final response = await kSupabase.rpc('get_recruiter_initiated_matches', params: {'recruiter_id': recruiterId}).execute();
    if (response.error != null) {
      throw MatchException(response.error!.message);
    } else {
      logger.i(response.data);
      response.data.forEach((element) {
        result.add(local_match.Match.fromJson(element));
      });
      return result;
    }
  }
   

  
  @override
  Future<void> initiateConversation({required String matchId}) {
    // TODO: implement initiateonversation
   throw UnimplementedError();
 }
 
  @override
  Future<List<local_match.Match>> getNotInitiatedRecruiterMatches({required String recruiterId}) async {
    List<local_match.Match> result = [];
    final response = await kSupabase.rpc('get_recruiter_uninitiated_matches', params: {'recruiter_id': recruiterId}).execute();
    if (response.error != null) {
      throw MatchException(response.error!.message);
    } else {
      logger.i(response.data);
      response.data.forEach((element) {
        result.add(local_match.Match.fromJson(element));
      });
      return result;
    }
  }
}
