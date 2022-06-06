import 'package:bloc/bloc.dart';
import 'package:doxa_mobile_app/business_logic/cubits/custom_switch/custom_switch_state.dart';
import 'package:flutter/material.dart';

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
