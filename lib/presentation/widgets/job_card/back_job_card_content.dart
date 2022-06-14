import 'package:auto_route/auto_route.dart';
import 'package:doxa_mobile_app/presentation/widgets/avatar.dart';
import 'package:doxa_mobile_app/presentation/widgets/candidate_card/candidate_card_segments.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_chip.dart';
import 'package:doxa_mobile_app/styles.dart';
import 'package:flutter/material.dart';

class BackJobCardContent extends StatelessWidget {
  const BackJobCardContent({
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
                radius: 35,
                avatarUrl: 'https://picsum.photos/200',
              ),
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ahmed Raza',
                  style: Theme.of(context).textTheme.headline5?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                ),
                Text(
                  'Creative Designer',
                  style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Theme.of(context).colorScheme.surfaceVariant),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 10),
        Text(
          'I am a professional creative designer with 8 years of experience in management. I am a professional',
          style: Theme.of(context).textTheme.caption?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 10),
        const CandidateCardSegment(
          listItems: [
            ['Senior Graphic Designer', 'HABIB BANK LIMITED', 'December 2021 - Present'],
            ['Senior Graphic Designer', 'HABIB BANK LIMITED', 'December 2021 - Present'],
            ['Senior Graphic Designer', 'HABIB BANK LIMITED', 'December 2021 - Present']
          ],
          title: 'WORK EXPERIENCE',
          extraInfo: '2 years',
          showAtFirst: 2,
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
        const SizedBox(height: 10),
        const CandidateCardSegment(
          listItems: [
            ['ABC University', 'Bachelors of Arts', 'Graphic Design', 'December 2021 - Present'],
            ['ABC University', 'Bachelors of Arts', 'Graphic Design', 'December 2021 - Present'],
            ['ABC University', 'Bachelors of Arts', 'Graphic Design', 'December 2021 - Present']
          ],
          title: 'EDUCATION',
          showAtFirst: 2,
        ),
      ],
    );
  }
}
