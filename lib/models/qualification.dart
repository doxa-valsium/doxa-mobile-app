import 'package:doxa_mobile_app/models/selectable.dart';
import 'package:equatable/equatable.dart';

class Qualification extends Equatable{
  final Degree degree;
  final Major major;
  final bool isCompleted;
  const Qualification({
    required this.degree,
    required this.major,
    required this.isCompleted,
  });
  
  @override
  List<Object?> get props => [degree, major, isCompleted];

}
