import 'package:auto_route/auto_route.dart';
import 'package:doxa_mobile_app/presentation/screens/company_profile_sceen/local_widgets/company_banner.dart';
import 'package:doxa_mobile_app/presentation/widgets/avatar.dart';
import 'package:flutter/material.dart';

class BackJobCardContent extends StatelessWidget {
  const BackJobCardContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            //const CompanyBanner(),
            Positioned(
              top: 90,
              right: MediaQuery.of(context).size.width * 0.3333,
              child: const Avatar(
                avatarType: AvatarType.company,
                radius: 52,
                avatarUrl: 'https://picsum.photos/200',
              ),
            ),
            Positioned.fill(
              top: 10,
              right: -290,
              child: Align(
                alignment: Alignment.topCenter,
                child: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    context.router.pop(context);
                  },
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 48,
        ),
        Text(
          'S&P Global Market ',
          style: Theme.of(context).textTheme.headline6?.copyWith(color: Theme.of(context).colorScheme.onBackground),
        ),
        Text(
          'Finace | Pakistan',
          style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.surfaceVariant),
        ),
        const SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 22, right: 22),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Bio',
              style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'S&P Global Inc. is an American publicly traded corporation. Its primary areas of business are financial information and analytics.S&P Global Inc. is an American publicly traded corporation. Its primary areas of business are financial information and analytics.',
              style: Theme.of(context).textTheme.caption?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
              // maxLines: 2,
              // overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 18,
            ),
            Text(
              'Website',
              style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'www.companyname.com',
              style: Theme.of(context).textTheme.caption?.copyWith(color: Theme.of(context).colorScheme.primary),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 18,
            ),
            Text(
              'Contact',
              style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              '+92-3352366331',
              style: Theme.of(context).textTheme.caption?.copyWith(color: Theme.of(context).colorScheme.primary),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ]),
        )
      ],
    );
  }
}
