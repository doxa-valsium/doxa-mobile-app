import 'package:doxa_mobile_app/styles.dart';
import 'package:flutter/material.dart';

SnackBar errorSnackBar(String message) {
  return SnackBar(
    content: Text(
      message,
      style: TextStyle(color: Styles.mainTheme.colorScheme.onBackground),
    ),
    backgroundColor: Styles.mainTheme.colorScheme.background,
  );
}
