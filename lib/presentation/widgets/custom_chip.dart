import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  final Color backgroundColor;
  final Color foregroundColor;
  final String text;
  const CustomChip({
    required this.backgroundColor,
    required this.foregroundColor,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(19)),
        color: backgroundColor,
      ),
      child: Text(
        text,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.overline?.copyWith(color: foregroundColor),
      ),
    );
  }
}
