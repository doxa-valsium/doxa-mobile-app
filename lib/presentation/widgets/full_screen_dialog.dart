import 'package:flutter/material.dart';

void fullScreenDialog(context, TextEditingController controller, Widget child) {
  showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: Colors.black45,
      transitionDuration: const Duration(milliseconds: 200),
      pageBuilder: (BuildContext buildContext, Animation animation, Animation secondaryAnimation) {
        return child;
      }).then((value) {
        controller.text = value.toString();
  });
}
