import 'dart:ui';
import 'package:doxa_mobile_app/presentation/widgets/custom_chip.dart';
import 'package:flutter/material.dart';


class RolesAndResponsibilities extends StatelessWidget {
  final List<String> roles;

  const RolesAndResponsibilities({
    required this.roles,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'ROLES & RESPONSIBILITIES',
          style: Theme.of(context).textTheme.button?.copyWith(color: Theme.of(context).colorScheme.surfaceVariant),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Text(
                    "\u2022 ${roles[index]}",
                    style: Theme.of(context).textTheme.caption?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  );
                },
              ),
              Row(
                children: [
                  ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                    child: Text(
                      "\u2022 ${roles[2]}",
                      style: Theme.of(context).textTheme.caption?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'See More',
                    style: Theme.of(context).textTheme.caption?.copyWith(color: Theme.of(context).colorScheme.primary),
                  ),
                ],
              )
            ],
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'SKILLS',
          style: Theme.of(context).textTheme.button?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
        ),
        const SizedBox(height: 10),
        GridView(
          clipBehavior: Clip.none,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 12,
            mainAxisSpacing: 6,
            mainAxisExtent: 26,
          ),
          children: [
            CustomChip(
              text: 'Lorem Ipsum',
              // backgroundColor: Theme.of(context).colorScheme.surface,
              // give color in hex code
              backgroundColor: const Color(0xFFE1EAFF),
              foregroundColor: Theme.of(context).colorScheme.primary,
            ),
            CustomChip(
              text: 'Lorem Ipsum',
              // backgroundColor: Theme.of(context).colorScheme.tertiary,
              backgroundColor: const Color(0xFFE1EAFF),
              foregroundColor: Theme.of(context).colorScheme.primary,
            ),
            CustomChip(
              text: 'Lorem Ipsum',
              // backgroundColor: Theme.of(context).colorScheme.tertiary,
              backgroundColor: const Color(0xFFE1EAFF),
              foregroundColor: Theme.of(context).colorScheme.primary,
            ),
            CustomChip(
              text: 'Lorem Ipsum',
              // backgroundColor: Theme.of(context).colorScheme.onPrimary,
              backgroundColor: const Color(0xFFE1EAFF),
              foregroundColor: Theme.of(context).colorScheme.primary,
            ),
            CustomChip(
              text: 'Lorem Ipsum',
              // backgroundColor: Theme.of(context).colorScheme.tertiary,
              backgroundColor: const Color(0xFFE1EAFF),
              foregroundColor: Theme.of(context).colorScheme.primary,
            ),
          ],
        ),
      ],
    );
  }
}
