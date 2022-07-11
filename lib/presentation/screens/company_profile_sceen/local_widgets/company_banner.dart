import 'package:cached_network_image/cached_network_image.dart';
import 'package:doxa_mobile_app/services/helper_service.dart';
import 'package:flutter/material.dart';

class CompanyBanner extends StatelessWidget {
  final bool updatingBannerImage;
  final String? bannerImageUrl;
  final VoidCallback onEdit;
  const CompanyBanner({
    Key? key,
    required this.updatingBannerImage,
    required this.bannerImageUrl, required this.onEdit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: HelperService.getImageColorFilter(updatingBannerImage),
      child: Container(
        height: 150.0,
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: (bannerImageUrl==null) ?  : CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: bannerImageUrl!,
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ) : ,
        ),
      ),
    );
  }
}
