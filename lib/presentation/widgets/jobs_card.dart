// ignore_for_file: prefer_const_constructors

import 'package:avatar_glow/avatar_glow.dart';
import 'package:doxa_mobile_app/presentation/widgets/costum_extended_card.dart';
import 'package:doxa_mobile_app/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:auto_route/auto_route.dart';

class JobsCard extends StatelessWidget {
  final bool isActive;
  final ButtonType buttonType1;

  const JobsCard({Key? key, required this.isActive, required this.buttonType1}) : super(key: key);

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
                  ? Container(
                      height: 16,
                      width: 55,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(19)),
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      child: Text(
                        'Active',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.overline?.copyWith(color: Theme.of(context).colorScheme.onTertiary),
                      ),
                    )
                  : Container(
                      height: 16,
                      width: 55,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(19)),
                        color: Theme.of(context).colorScheme.surface,
                      ),
                      child: Text(
                        'Inactive',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.overline?.copyWith(color: Theme.of(context).colorScheme.onSurface),
                      ),
                    ),
            ),
            // const SizedBox(height: 10),
            Spacer(),
            Text(
              "Software Engineer",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.onBackground),
            ),
            const SizedBox(height: 3),
            Text("Karachi, Pakistan | Full-Time",
                maxLines: 2, overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.overline?.copyWith(color: Theme.of(context).colorScheme.onSurface)),
            Spacer(),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 15,
                width: 62,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(19)),
                  color: Theme.of(context).colorScheme.secondary,
                ),
                child: Text(
                  "5 Matches",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.overline?.copyWith(color: Theme.of(context).colorScheme.onSecondary),
                ),
              ),
            ),
          ],
        ),
      ),
      childBottomCard: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (isActive)
            // const Iconify(
            //   Mdi.briefcase_edit_outline,
            //   size: 25,
            //   color: Color.fromARGB(255, 255, 255, 255),
            // ),
            AvatarGlow(
              glowColor: Theme.of(context).colorScheme.background,
              endRadius: 10.0,
              duration: const Duration(milliseconds: 1000),
              repeat: true,
              showTwoGlows: true,
              repeatPauseDuration: const Duration(milliseconds: 10),
              child: Container(
                width: 10.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Theme.of(context).colorScheme.primary, Theme.of(context).colorScheme.secondary]),
                ),
              ),
            ),
          if (isActive) const SizedBox(width: 10),
          if (isActive)
            Text(
              'START SWIPING',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.overline?.copyWith(color: Theme.of(context).colorScheme.background),
            ),
          if (isActive == false)
            const Iconify(
              Mdi.briefcase_edit_outline,
              size: 25,
              color: Color(0xFF0061FE),
            ),
          SizedBox(width: 10),
          if (isActive == false)
            Text(
              'EDIT JOB',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.overline?.copyWith(color: Theme.of(context).colorScheme.primary),
            ),
        ],
      ),
    );
  }
}
