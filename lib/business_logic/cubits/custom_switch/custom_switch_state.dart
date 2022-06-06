import 'package:equatable/equatable.dart';

class CustomSwitchState extends Equatable {
  final double positionX;
  final bool toggleValue;
  const CustomSwitchState({required this.positionX, required this.toggleValue});

  @override
  List<Object> get props => [positionX, toggleValue];

  CustomSwitchState copyWith({double? positionX, bool? toggleValue}) {
    return CustomSwitchState(
      positionX: positionX ?? this.positionX,
      toggleValue: toggleValue ?? this.toggleValue,
    );
  }
}
