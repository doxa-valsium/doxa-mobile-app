import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:doxa_mobile_app/business_logic/cubits/add_qualification_button/add_qualification_button_state.dart';
import 'package:flutter/material.dart';

class AddQualificationButtonCubit extends Cubit<AddQualificationButtonState> {
  BuildContext context;

  AddQualificationButtonCubit({required double buttonHeight, required bool isExpanded, required bool showContainers, required this.context})
      : super(AddQualificationButtonState(buttonHeight: buttonHeight, isExpanded: isExpanded, showContainers: showContainers));

  void expand() {
    if (!state.isExpanded) {
      emit(state.copyWith(isExpanded: true, buttonHeight: 360));
    }
  }

  void collapse() {
    if (state.isExpanded) {
      emit(state.copyWith(isExpanded: false, buttonHeight: 54));
    }
  }

  void showContainer() {
    if (state.isExpanded) {
      emit(state.copyWith(showContainers: true));
    }
  }
}
