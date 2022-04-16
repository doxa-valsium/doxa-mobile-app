import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class CustomDottedBorder extends StatelessWidget {
  final BorderType borderType;
  final Widget child;
  const CustomDottedBorder({Key? key, this.borderType = BorderType.Rect, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: Theme.of(context).colorScheme.onSecondary,
      strokeWidth: 2,
      dashPattern: const [5, 4],
      borderType: borderType,
      child: child,
    );
  }
}
