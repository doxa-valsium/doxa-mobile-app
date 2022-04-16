// A default avatar for for the app.
import 'package:dotted_border/dotted_border.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/et.dart';

/// A widget that displays a circle default avatar.
class DefaultAvatar extends StatelessWidget {
  /// A widget that displays a circle default avatar.
  const DefaultAvatar({
    Key? key,
    required this.radius,
  }) : super(key: key);

  final double radius;

  @override
  Widget build(BuildContext context) {
    return CustomDottedBorder(
      borderType: BorderType.Circle,
      child: Container(
        width: radius * 2,
        height: radius * 2,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Theme.of(context).colorScheme.secondary,
        ),
        padding: const EdgeInsets.all(4),
        child: Transform.scale(
          scale: 0.8,
          child: Iconify(
            Et.profile_male,
            color: Theme.of(context).colorScheme.onSecondary,
          ),
        ),
      ),
    );
  }
}
