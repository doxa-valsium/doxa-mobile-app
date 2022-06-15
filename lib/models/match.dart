import 'package:doxa_mobile_app/models/candidate.dart';
import 'package:doxa_mobile_app/models/job.dart';
import 'package:equatable/equatable.dart';

enum MatchStatus { initiated, notInititaed, closed }

enum ClosingReason { automatic, closedByRecruiter, closedByCandidate }

class Match extends Equatable {
  final String matchId;
  final Job job;
  final Candidate candidate;
  final MatchStatus matchStatus;
  final ClosingReason? closingReason;
  final DateTime createdAt;
  const Match({
    required this.matchId,
    required this.job,
    required this.candidate,
    required this.matchStatus,
    this.closingReason,
    required this.createdAt,
  });

  @override
  List<Object?> get props => [matchId, job, candidate, matchStatus, closingReason, createdAt];
}
