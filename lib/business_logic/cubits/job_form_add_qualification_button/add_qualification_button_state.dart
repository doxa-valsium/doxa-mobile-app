part of 'add_qualification_button_cubit.dart';
class AddQualificationButtonState extends Equatable {
  final double buttonHeight;
  final bool isExpanded;
  final bool showContainers;
  final bool isEditing;
  final List<Qualification> qualifications;

  const AddQualificationButtonState({required this.buttonHeight, required this.isExpanded, required this.showContainers, required this.isEditing, required this.qualifications});

  @override
  List<Object> get props => [buttonHeight, isExpanded, showContainers, isEditing, qualifications];

  AddQualificationButtonState copyWith({double? buttonHeight, bool? isExpanded, bool? showContainers, bool? isEditing, List<Qualification>? qualifications}) {
    return AddQualificationButtonState(
      buttonHeight: buttonHeight ?? this.buttonHeight,
      isExpanded: isExpanded ?? this.isExpanded,
      showContainers: showContainers ?? this.showContainers,
      isEditing: isEditing ?? this.isEditing,
      qualifications: qualifications ?? this.qualifications,
    );
  }
}
