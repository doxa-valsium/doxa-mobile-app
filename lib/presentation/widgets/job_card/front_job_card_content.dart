import 'dart:ui';
import 'package:auto_route/auto_route.dart';
import 'package:doxa_mobile_app/presentation/widgets/avatar.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_chip.dart';
import 'package:doxa_mobile_app/presentation/widgets/job_card/job_card_grid.dart';
import 'package:doxa_mobile_app/presentation/widgets/job_card/job_card_requirements.dart';
import 'package:doxa_mobile_app/styles.dart';
import 'package:flutter/material.dart';

class FrontJobCardContent extends StatelessWidget {
  const FrontJobCardContent({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                context.router.pop(context);
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                boxShadow: Styles.elevation3,
              ),
              child: const Avatar(
                radius: 45,
                avatarUrl: 'https://picsum.photos/200',
              ),
            ),
            const SizedBox(width: 8),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  Text(
                    'Software Engineer',
                    // maxLines: 2,
                    // overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.headline5?.copyWith(color: Theme.of(context).colorScheme.onBackground).copyWith(height: 0.9),
                  ),
                  Text(
                    'Karachi, Pakistan',
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Theme.of(context).colorScheme.surfaceVariant),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Text(
          'We are looking for a highly motivated, enthusiastic, and skilled software engineer for S&P Global Market.',
          style: Theme.of(context).textTheme.caption?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 10),
        GridView(
          clipBehavior: Clip.none,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 44,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          children: const [
            JobCardGrid(
              title: 'EMPLOYMENT TYPE',
              subtitle: 'Full-Time',
            ),
            JobCardGrid(
              title: 'SALARY RANGE',
              subtitle: '\$100k - \$120k/Salary',
            ),
            JobCardGrid(
              title: 'WORKPLACE TYPE',
              subtitle: 'In-person',
            ),
            JobCardGrid(
              title: 'INDUSTRY',
              subtitle: 'Finance',
            ),
          ],
        ),
        const SizedBox(height: 10),
        const JobCardRequirements(
          experience: 2,
          quali: ['Bachelor’s in Computer Science', 'Master’s in Computer Science', 'Masters in Computers'],
        ),
        const SizedBox(height: 10),
        const RolesAndResponsibilities(
          roles: [
            'Design and developer a web application that allows users to create, edit, and delete their own notes.',
            'Lead a team of sales associates',
            'Lead a team of sales associates',
          ],
        )
      ],
    );
  }
}

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
