import 'package:flutter/material.dart';

class HelperService {
  static String someHelperFunctions() {
    return 'doAnything';
  }

  static ColorFilter getImageColorFilter(bool isUpdating) => ColorFilter.matrix(<double>[1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, isUpdating ? 0.75 : 1, 0]);
}
