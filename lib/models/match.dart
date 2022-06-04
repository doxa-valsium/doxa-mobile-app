import 'package:doxa_mobile_app/models/candidate.dart';
import 'package:doxa_mobile_app/models/job.dart';

enum MatchStatus { initiated, notInititaed, closed }

enum ClosingReason { automatic, closedByRecruiter, closedByCandidate }

class Match {
  String matchId;
  Job job;
  Candidate candidate;
  MatchStatus matchStatus;
  ClosingReason? closingReason;
  DateTime createdAt;
  Match({
    required this.matchId,
    required this.job,
    required this.candidate,
    required this.matchStatus,
    this.closingReason,
    required this.createdAt,
  });
}
