import 'package:cached_network_image/cached_network_image.dart';
import 'package:doxa_mobile_app/presentation/widgets/default_avatar.dart';
import 'package:flutter/material.dart';

/// A widget that displays a circle avatar.
/// If the [avatarUrl] is null, it will display a default avatar.
class Avatar extends StatelessWidget {
  final String? avatarUrl;
  final double radius;
  final double? minRadius;
  final double? maxRadius;
  final double? glowRadius;

  /// A widget that displays a circle avatar.
  /// If the [avatarUrl] is null, it will display a default avatar.
  const Avatar({Key? key, this.avatarUrl, this.radius = 24, this.minRadius, this.maxRadius, this.glowRadius}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (avatarUrl == null) {
      return DefaultAvatar(radius: radius);
    }
    return CachedNetworkImage(
      imageUrl: avatarUrl!,
      imageBuilder: (context, imageProvider) => CircleAvatar(
        radius: radius,
        minRadius: minRadius,
        maxRadius: maxRadius,
        backgroundImage: imageProvider,
        backgroundColor: Colors.transparent,
      ),
      placeholder: (context, url) => DefaultAvatar(radius: radius),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
