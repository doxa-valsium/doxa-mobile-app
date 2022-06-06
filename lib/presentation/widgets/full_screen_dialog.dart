import 'package:flutter/material.dart';

void fullScreenDialog(context, TextEditingController controller, Widget child, bool forSkills, void Function(String)? onSkillAdd) {
  showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: Colors.black45,
      transitionDuration: const Duration(milliseconds: 200),
      pageBuilder: (BuildContext buildContext, Animation animation, Animation secondaryAnimation) {
        return child;
      }).then((value) {
    if (value != null) {
      controller.text = value.toString();
      if (forSkills) {
        onSkillAdd!(value.toString());
        controller.clear();
      }
    }
  });
}
