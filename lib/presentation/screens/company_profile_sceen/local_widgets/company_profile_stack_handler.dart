import 'package:doxa_mobile_app/presentation/screens/company_profile_sceen/local_widgets/company_banner.dart';
import 'package:doxa_mobile_app/presentation/widgets/avatar.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/fluent.dart';
import 'package:iconify_flutter/icons/lucide.dart';

class CompanyProfileStackHandler extends StatelessWidget {
  final Widget child;

  const CompanyProfileStackHandler({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 196, left: 20, right: 20, bottom: 16.0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onSecondaryContainer,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                border: Border.all(color: Theme.of(context).colorScheme.secondaryContainer, width: 1),
              ),
              child: child,
            ),
            const CompanyBanner(),
            const Positioned.fill(
              top: 90,
              child: Align(
                alignment: Alignment.topCenter,
                child: Avatar(
                  avatarType: AvatarType.company,
                  radius: 52,
                  avatarUrl: 'https://picsum.photos/200',
                ),
              ),
            ),
            Positioned.fill(
                top: 165,
                right: -60,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: const BorderRadius.all(Radius.circular(25)),
                      border: Border.all(color: Theme.of(context).colorScheme.onSurface, width: 1),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    // child: Icon(
                    //   Icons.add_a_photo_outlined,
                    //   size: 20.0,
                    //   color: Theme.of(context).colorScheme.primary,
                    // )),
                    child: Iconify(
                      Fluent.camera_edit_20_filled,
                      size: 20.0,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                )),
            Positioned.fill(
              top: 10,
              right: -290,
              child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: const BorderRadius.all(Radius.circular(25)),
                      border: Border.all(color: Theme.of(context).colorScheme.onSurface, width: 1),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    // child: Icon(
                    //   Icons.add_a_photo_outlined,
                    //   size: 30.0,
                    //   color: Theme.of(context).colorScheme.primary,
                    // )),
                    child: Iconify(
                      Fluent.camera_edit_20_filled,
                      size: 30.0,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  )),
            )
          ],
        ),
      ],
    );
  }
}
