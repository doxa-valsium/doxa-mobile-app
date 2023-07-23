import 'package:cached_network_image/cached_network_image.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_loading_indicator.dart';
import 'package:doxa_mobile_app/presentation/widgets/image_edit_button.dart';
import 'package:doxa_mobile_app/services/helper_service.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/et.dart';

import 'package:iconify_flutter/icons/mdi.dart';

enum AvatarType { company, user }

enum EmptyAvatarBorderType { none, dotted }

/// A widget that displays a circle avatar.
/// If the [avatarUrl] is null, it will display a default avatar.
/// If [onEdit] is not null, it will display a edit icon.
class Avatar extends StatelessWidget {
  final String? avatarUrl;
  final double radius;
  final double? minRadius;
  final double? maxRadius;
  final AvatarType avatarType;
  final EmptyAvatarBorderType emptyAvatarBorderType;
  final bool isUpdating;
  final VoidCallback? onEdit;

  /// A widget that displays a circle avatar.
  /// If the [avatarUrl] is null, it will display a default avatar.
  /// If [onEdit] is not null, it will display a edit icon.
  const Avatar({
    Key? key,
    this.avatarUrl,
    this.radius = 24,
    this.minRadius,
    this.maxRadius,
    this.avatarType = AvatarType.user,
    this.emptyAvatarBorderType = EmptyAvatarBorderType.none,
    this.isUpdating = false,
    this.onEdit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: radius * 2.20,
      width: radius * 2.20,
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          ColorFiltered(
            colorFilter: HelperService.getImageColorFilter(isUpdating),
            child: Container(
              child: avatarUrl != null
                  ? CachedNetworkImage(
                      color: Colors.white,
                      imageUrl: avatarUrl!,
                      imageBuilder: (context, imageProvider) => CircleAvatar(
                        radius: radius,
                        minRadius: minRadius,
                        maxRadius: maxRadius,
                        backgroundImage: imageProvider,
                        backgroundColor: Colors.white,
                      ),
                      placeholder: (context, url) =>
                          _PlaceHolderAvatar(avatarType: avatarType, emptyAvatarBorderType: emptyAvatarBorderType, radius: radius, inLoading: isUpdating),
                      errorWidget: (context, url, error) =>
                          _PlaceHolderAvatar(avatarType: avatarType, emptyAvatarBorderType: emptyAvatarBorderType, radius: radius, inLoading: isUpdating),
                    )
                  : _PlaceHolderAvatar(avatarType: avatarType, emptyAvatarBorderType: emptyAvatarBorderType, radius: radius, inLoading: isUpdating),
            ),
          ),
          if (onEdit != null)
            Positioned.fill(
              top: 80,
              left: 50,
              child: Align(
                alignment: Alignment.topCenter,
                child: ImageEditButton(onPressed: onEdit!),
              ),
            ),
          if (isUpdating) SizedBox(height: radius / 2.5, width: radius / 2.5, child: CustomLoadingIndicator(color: Theme.of(context).colorScheme.primary))
        ],
      ),
    );
  }
}

class _PlaceHolderAvatar extends StatelessWidget {
  final AvatarType avatarType;
  final EmptyAvatarBorderType emptyAvatarBorderType;
  final double radius;
  final bool inLoading;

  const _PlaceHolderAvatar({Key? key, required this.avatarType, required this.emptyAvatarBorderType, required this.radius, required this.inLoading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          avatarType == AvatarType.user ? Et.profile_male : Mdi.office_building,
          color: Theme.of(context).colorScheme.onSecondary,
        ),
      ),
    );
  }
}
