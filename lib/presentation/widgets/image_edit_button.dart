import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/fluent.dart';

class ImageEditButton extends StatelessWidget {
  final double size;
  final double iconSize;
  final VoidCallback onPressed;
  const ImageEditButton({
    Key? key,
    this.size = 36,
    this.iconSize = 24,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: const BorderRadius.all(Radius.circular(25)),
          border: Border.all(color: Theme.of(context).colorScheme.onSurface, width: 1),
        ),
        padding: const EdgeInsets.all(8.0),
        child: Iconify(
          Fluent.camera_edit_20_filled,
          size: iconSize,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
