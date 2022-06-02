import 'package:equatable/equatable.dart';

class Publication extends Equatable {
  final String title;
  final String field;
  final String journal;
  final DateTime date;

  const Publication({required this.title, required this.field, required this.journal, required this.date});

  @override
  List<Object?> get props => [title, field, journal, date];
}
