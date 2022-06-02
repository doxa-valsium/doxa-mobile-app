import 'package:doxa_mobile_app/models/selectable.dart';
import 'package:equatable/equatable.dart';

class Certification extends Equatable {
  final String title;
  final DateTime dated;
  final Affiliation affiliation;
  const Certification({
    required this.title,
    required this.dated,
    required this.affiliation,
  });
  
  @override
  List<Object?> get props => [title,dated,affiliation];
}
