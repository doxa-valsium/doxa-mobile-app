import 'package:doxa_mobile_app/presentation/screens/company_profile_sceen/local_widgets/company_avatar.dart';
import 'package:doxa_mobile_app/presentation/widgets/avatar.dart';
import 'package:flutter/material.dart';

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
            const CompanyAvatar(),
            const Positioned.fill(
              top: 90,
              child: Align(
                alignment: Alignment.topCenter,
                child: Avatar(
                  radius: 52,
                  avatarUrl:
                      'https://1.bp.blogspot.com/-W_7SWMP5Rag/YTuyV5XvtUI/AAAAAAAAuUQ/hm6bYcvlFgQqgv1uosog6K8y0dC9eglTQCLcBGAsYHQ/s880/Best-Profile-Pic-For-Boys%2B%25281%2529.jpg',
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
