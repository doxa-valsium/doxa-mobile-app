import 'package:doxa_mobile_app/presentation/widgets/avatar.dart';
import 'package:doxa_mobile_app/styles.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bx.dart';

class MemberCard extends StatelessWidget {
  final String? avatarUrl;
  final String memberName;
  final String memberPosition;
  final bool isAdmin;
  const MemberCard({
    this.avatarUrl,
    required this.memberName,
    required this.memberPosition,
    required this.isAdmin,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isAdmin) {
      return Container(
        height: 72.0,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onSecondaryContainer,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: Styles.elevation2,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Avatar(
                      radius: 24.0,
                      avatarUrl: avatarUrl,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      memberName,
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    Text(
                      memberPosition,
                      style: Theme.of(context).textTheme.caption?.copyWith(color: Theme.of(context).colorScheme.surfaceVariant),
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Align(
                    child: Iconify(
                      Bx.dots_vertical_rounded,
                      size: 28.0,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                    alignment: const Alignment(0.7, -0.6),
                  ),
                  Align(
                    child: Container(
                      width: 48.0,
                      height: 16.0,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Center(
                        child: Text(
                          'Admin',
                          style: Theme.of(context).textTheme.overline?.copyWith(color: Theme.of(context).colorScheme.onSecondary),
                        ),
                      ),
                    ),
                    alignment: Alignment.bottomCenter,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    } else {
      return Container(
        height: 72.0,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onSecondaryContainer,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: Styles.elevation2,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Avatar(
                      radius: 24.0,
                      avatarUrl: avatarUrl,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      memberName,
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      memberPosition,
                      style: Theme.of(context).textTheme.caption?.copyWith(color: Theme.of(context).colorScheme.surfaceVariant),
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Align(
                      child: Iconify(
                        Bx.dots_vertical_rounded,
                        size: 28.0,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                      alignment: const Alignment(0.7, -0.6),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
  }
}
