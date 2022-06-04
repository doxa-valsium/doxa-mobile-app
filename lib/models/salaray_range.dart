import 'package:equatable/equatable.dart';

class SalarayRange extends Equatable {
  final int min;
  final int max;
  const SalarayRange({required this.min, required this.max});

  @override
  List<Object?> get props => [min, max];
}
