import 'package:equatable/equatable.dart';

class Award extends Equatable {
  final String title;
  final String awardedBy;
  final DateTime date;

  const Award({required this.title, required this.awardedBy, required this.date});

  @override
  List<Object?> get props => [title, awardedBy, date];
}
