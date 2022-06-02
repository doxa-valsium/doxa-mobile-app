import 'package:equatable/equatable.dart';

class AddQualificationButtonState extends Equatable {
  final double buttonHeight;
  final bool isExpanded;
  final bool showContainers;
  // final double opacity;
  const AddQualificationButtonState({required this.buttonHeight, required this.isExpanded, required this.showContainers});

  @override
  List<Object> get props => [buttonHeight, isExpanded, showContainers];

  AddQualificationButtonState copyWith({double? buttonHeight, bool? isExpanded, bool? showContainers}) {
    return AddQualificationButtonState(
      buttonHeight: buttonHeight ?? this.buttonHeight,
      isExpanded: isExpanded ?? this.isExpanded,
      showContainers: showContainers ?? this.showContainers,
    );
  }
}
