import 'package:bloc/bloc.dart';
import 'package:doxa_mobile_app/business_logic/cubits/job_form_add_qualification_button/add_qualification_button_state.dart';
import 'package:doxa_mobile_app/presentation/screens/job_form/local_widgets/qualification.dart';
import 'package:flutter/material.dart';

class AddQualificationButtonCubit extends Cubit<AddQualificationButtonState> {
  BuildContext context;

  AddQualificationButtonCubit(
      {required double buttonHeight,
      required bool isExpanded,
      required bool showContainers,
      required bool isEditing,
      required List<Qualification> qualifications,
      required this.context})
      : super(
            AddQualificationButtonState(buttonHeight: buttonHeight, isExpanded: isExpanded, showContainers: showContainers, isEditing: isEditing, qualifications: qualifications));

  void expand() async {
    if (!state.isExpanded) {
      emit(state.copyWith(isExpanded: true, buttonHeight: 400, showContainers: false));
    }
  }

  void collapse() {
    if (state.isExpanded) {
      emit(state.copyWith(isExpanded: false, buttonHeight: 54, showContainers: false));
    }
  }

  void showContainer() {
    if (state.isExpanded) {
      emit(state.copyWith(showContainers: true));
    }
  }

  void toggleIsEditing() {
    emit(state.copyWith(isEditing: !state.isEditing));
  }

  void addQualification(newQualification) {
    List<Qualification> qualifications = List<Qualification>.of(state.qualifications);
    qualifications.add(newQualification);
    emit(state.copyWith(qualifications: qualifications));
  }

  void deleteQualification(toBeDeletedQualification) {
    List<Qualification> qualifications = List<Qualification>.of(state.qualifications);
    qualifications.removeWhere((qualification) => qualification == toBeDeletedQualification);
    emit(state.copyWith(qualifications: qualifications));
  }

  
}
