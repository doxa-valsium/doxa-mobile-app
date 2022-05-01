import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CompanyBanner extends StatelessWidget {
  const CompanyBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: 'https://cdn.wework.com/locations/image/610d4132-ef0a-11eb-815d-0e6a5dc689cd/Web_150DPI-20210521_WeWork_HQ_35_East_21st_St_-_New_York_001.jpg',
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }
}
