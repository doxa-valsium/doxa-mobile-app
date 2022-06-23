import 'package:doxa_mobile_app/models/match.dart' as local_match;

abstract class MatchRepository {
  Future<List<local_match.Match>> getInitiatedRecruiterMatches({required String recruiterId});
  Future<List<local_match.Match>> getNotInitiatedRecruiterMatches({required String recruiterId});
  Future<void> closeMatch({required String matchId});
  Future<void> initiateConversation({required String matchId});
}
