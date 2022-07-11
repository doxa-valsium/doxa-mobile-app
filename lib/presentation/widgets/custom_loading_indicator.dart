import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomLoadingIndicator extends StatelessWidget {
  final Color? color;
  const CustomLoadingIndicator({Key? key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoActivityIndicator(color: color);
    } else {
      return CircularProgressIndicator(color: color);
    }
  }
}
