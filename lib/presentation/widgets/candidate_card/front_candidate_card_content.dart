import 'package:auto_route/auto_route.dart';
import 'package:doxa_mobile_app/presentation/widgets/avatar.dart';
import 'package:doxa_mobile_app/presentation/widgets/candidate_card/candidate_card_pub.dart';
import 'package:doxa_mobile_app/presentation/widgets/candidate_card/candidate_card_segments.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_chip.dart';
import 'package:doxa_mobile_app/styles.dart';
import 'package:flutter/material.dart';

class FrontCandidateCardContent extends StatelessWidget {
  const FrontCandidateCardContent({
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
            ['Figma Expert', 'Figma Corp.', '23 June 2019'],
            ['Figma Expert', 'Figma Corp.', '23 June 2019'],
            ['Figma Expert', 'Figma Corp.', '23 June 2019']
          ],
          title: 'CERTIFICATIONS',
          showAtFirst: 1,
        ),
        const SizedBox(height: 10),
        const CandidateCardSegment(
          listItems: [
            ['Best Design Awards', 'Global Design Hackathon', '23 June 2019'],
            ['Best Design Awards', 'Global Design Hackathon', '23 June 2019'],
            ['Best Design Awards', 'Global Design Hackathon', '23 June 2019']
          ],
          title: 'AWARDS',
          showAtFirst: 1,
        ),
        const SizedBox(height: 10),
        const CandidateCardSegmentPublication(
          listItems: [
            ['Impact of High Fidelty Design in Low Income Economy', 'Human Centered Design', 'The Design Journal', '06 Aug 2021'],
          ],
          title: 'PUBLICATIONS',
        ),
        const SizedBox(height: 10),
        Text(
          'EXTERNAL LINKS',
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
            mainAxisSpacing: 5,
            mainAxisExtent: 26,
          ),
          children: [
            CustomChip(
              text: 'Behance',
              // backgroundColor: Theme.of(context).colorScheme.surface,
              backgroundColor: const Color(0xFFE1EAFF),
              foregroundColor: Theme.of(context).colorScheme.primary,
              externalLink: true,
            ),
            CustomChip(
              text: 'LinkedIn',
              // backgroundColor: Theme.of(context).colorScheme.tertiary,
              backgroundColor: const Color(0xFFE1EAFF),
              foregroundColor: Theme.of(context).colorScheme.primary,
              externalLink: true,
            ),
            CustomChip(
              text: 'Dribble',
              // backgroundColor: Theme.of(context).colorScheme.tertiary,
              backgroundColor: const Color(0xFFE1EAFF),
              foregroundColor: Theme.of(context).colorScheme.primary,
              externalLink: true,
            ),
          ],
        ),
      ],
    );
  }
}
