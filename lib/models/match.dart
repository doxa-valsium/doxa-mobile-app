import 'package:equatable/equatable.dart';

enum MatchStatus { initiated, notInitiated, closed }

enum ClosingReason { automatic, closedByRecruiter, closedByCandidate }

MatchStatus getMatchStatus(String value) {
  switch (value) {
    case 'initiated':
      return MatchStatus.initiated;
    case 'notInititaed':
      return MatchStatus.notInitiated;
    case 'closed':
      return MatchStatus.closed;
    default:
      return MatchStatus.notInitiated;
  }
}

class Match extends Equatable {
  final int matchId;
  final int jobId;
  final String jobName;
  final String candidateId;
  final String candidateName;
  final MatchStatus matchStatus;
  final ClosingReason? closingReason;
  final DateTime createdAt;
  final String? profileUrl;
  const Match({
    required this.candidateId,
    required this.candidateName,
    required this.jobName,
    required this.matchId,
    required this.jobId,
    required this.matchStatus,
    this.profileUrl,
    this.closingReason,
    required this.createdAt,
  });

  Match.fromJson(Map json)
      : candidateId = json['candidate_id'],
        candidateName = json['candidate_name'],
        matchId = json['match_id'],
        jobId = json['job_id'],
        jobName = json['job_title'],
        matchStatus = getMatchStatus(json['match_status'].toString()),
        closingReason = json['closing_reason'],
        profileUrl = json['candidate_profile_photo'],
        createdAt = DateTime.parse(json['created_at']);

  @override
  List<Object?> get props => [matchId, jobId, candidateId, candidateName, matchStatus, closingReason, createdAt];
}
