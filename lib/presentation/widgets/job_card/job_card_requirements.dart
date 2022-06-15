import 'dart:ui';

import 'package:flutter/material.dart';

class JobCardRequirements extends StatelessWidget {
  final int experience;
  final List<String> quali;
  const JobCardRequirements({
    Key? key,
    required this.experience,
    required this.quali,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'REQUIREMENTS',
          style: Theme.of(context).textTheme.button?.copyWith(color: Theme.of(context).colorScheme.surfaceVariant),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Required Experience',
                    style: Theme.of(context).textTheme.subtitle2?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
                  ),
                  const Spacer(),
                  Text(
                    '$experience years',
                    style: Theme.of(context).textTheme.caption?.copyWith(color: Theme.of(context).colorScheme.primary),
                  ),
                ],
              ),
              Text(
                'Required Qualifications',
                style: Theme.of(context).textTheme.subtitle2?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              quali[index],
                              style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                            ),
                            const SizedBox(width: 4),
                          ],
                        );
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ImageFiltered(
                          imageFilter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                          child: Text(
                            quali[2],
                            style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.onBackground),
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
            ],
          ),
        ),
      ],
    );
  }
}
