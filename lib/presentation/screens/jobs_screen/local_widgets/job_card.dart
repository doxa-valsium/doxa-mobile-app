import 'package:doxa_mobile_app/presentation/widgets/custom_extended_card.dart';
import 'package:doxa_mobile_app/presentation/widgets/pulsating_button.dart';
import 'package:doxa_mobile_app/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:auto_route/auto_route.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_chip.dart';

class JobCard extends StatelessWidget {
  final bool isActive;
  final ButtonType buttonType1;

  const JobCard({Key? key, required this.isActive, required this.buttonType1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomExtendedCard(
      upperBoxHeight: 132,
      lowerBoxHeight: 40,
      buttonType: buttonType1,
      childTopCard: GestureDetector(
        onTap: () {
          context.router.push(const SingleJobRoute());
        },
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: isActive
                  ? CustomChip(
                      text: 'Active',
                      backgroundColor: Theme.of(context).colorScheme.tertiary,
                      foregroundColor: Theme.of(context).colorScheme.onTertiary,
                    )
                  : CustomChip(
                      text: 'Inactive',
                      backgroundColor: Theme.of(context).colorScheme.surface,
                      foregroundColor: Theme.of(context).colorScheme.onSurface,
                    ),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Software Engineer",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.onBackground),
              ),
            ),
            const SizedBox(height: 3),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Karachi, Pakistan | Full-Time",
                  maxLines: 2, overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.overline?.copyWith(color: Theme.of(context).colorScheme.onSurface)),
            ),
            const Spacer(),
            Align(
                alignment: Alignment.bottomLeft,
                child: CustomChip(
                  text: '5 Matches',
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  foregroundColor: Theme.of(context).colorScheme.onSecondary,
                )),
          ],
        ),
      ),
      childBottomCard: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (isActive)
            // AvatarGlow(
            //   glowColor: Theme.of(context).colorScheme.background,
            //   endRadius: 10.0,
            //   duration: const Duration(milliseconds: 1000),
            //   repeat: true,
            //   showTwoGlows: true,
            //   repeatPauseDuration: const Duration(milliseconds: 10),
            //   child: Container(
            //     width: 10.0,
            //     decoration: BoxDecoration(
            //       shape: BoxShape.circle,
            //       gradient: LinearGradient(
            //           begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Theme.of(context).colorScheme.primary, Theme.of(context).colorScheme.secondary]),
            //     ),
            //   ),
            // ),
            PulsatingButton(
              discRadius: 10.0,
              animationRadius: 10.0,
              primaryColor: Theme.of(context).colorScheme.primary,
              secondaryColor: Theme.of(context).colorScheme.secondary,
              glowColor: Theme.of(context).colorScheme.background,
              animationDuration: const Duration(milliseconds: 1000),
              delay: const Duration(milliseconds: 10),
            ),
          if (isActive) const SizedBox(width: 10),
          if (isActive)
            SizedBox(
              width: 100,
              child: Text(
                'START SWIPING',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.overline?.copyWith(color: Theme.of(context).colorScheme.background),
              ),
            ),
          if (isActive == false)
            const Iconify(
              Mdi.briefcase_edit_outline,
              size: 18,
              color: Color(0xFF0061FE),
            ),
          const SizedBox(width: 10),
          if (isActive == false)
            SizedBox(
              width: 100,
              child: Text(
                'EDIT JOB',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.overline?.copyWith(color: Theme.of(context).colorScheme.primary),
              ),
            ),
        ],
      ),
    );
  }
}
