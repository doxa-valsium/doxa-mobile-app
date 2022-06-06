import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';

class JobFieldTitleWithInfo extends StatelessWidget {
  final String title;
  final VoidCallback onInfo;
  const JobFieldTitleWithInfo({Key? key, required this.title, required this.onInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline6!.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        GestureDetector(
          onTap: onInfo,
          child: Iconify(
            Mdi.info_circle_outline,
            size: 20,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}
