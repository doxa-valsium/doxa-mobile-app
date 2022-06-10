import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'custom_switch_state.dart';

class CustomSwitchCubit extends Cubit<CustomSwitchState> {
  BuildContext context;

  CustomSwitchCubit({required double positionX, required bool toggleValue, required this.context}) : super(CustomSwitchState(positionX: positionX, toggleValue: toggleValue));

  void toggle() {
    if (state.toggleValue) {
      emit(state.copyWith(positionX: (MediaQuery.of(context).size.width / 2) - (8 + 8 + 12), toggleValue: false));
    } else if (!state.toggleValue) {
      emit(state.copyWith(positionX: 8, toggleValue: true));
    }
  }
}
