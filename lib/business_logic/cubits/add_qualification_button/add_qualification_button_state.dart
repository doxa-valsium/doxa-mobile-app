import 'package:equatable/equatable.dart';

class AddQualificationButtonState extends Equatable {
  final double buttonHeight;
  final bool isExpanded;
  final bool showContainers;
  final bool isEditing;
  // final double opacity;
  const AddQualificationButtonState({
    required this.buttonHeight, 
    required this.isExpanded, 
    required this.showContainers,
    required this.isEditing
    });

  @override
  List<Object> get props => [buttonHeight, isExpanded, showContainers, isEditing];

  AddQualificationButtonState copyWith({double? buttonHeight, bool? isExpanded, bool? showContainers, bool? isEditing}) {
    return AddQualificationButtonState(
      buttonHeight: buttonHeight ?? this.buttonHeight,
      isExpanded: isExpanded ?? this.isExpanded,
      showContainers: showContainers ?? this.showContainers,
      isEditing: isEditing ?? this.isEditing,
    );
  }
}
