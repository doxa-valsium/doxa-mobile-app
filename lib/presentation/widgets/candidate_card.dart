import 'package:doxa_mobile_app/presentation/widgets/avatar.dart';
import 'package:doxa_mobile_app/presentation/widgets/candidate_card_pub.dart';
import 'package:doxa_mobile_app/presentation/widgets/candidate_card_segments.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_chip.dart';
import 'package:doxa_mobile_app/styles.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class CandidateCard extends StatefulWidget {
  const CandidateCard({Key? key}) : super(key: key);

  @override
  State<CandidateCard> createState() => _CandidateCardState();
}

class _CandidateCardState extends State<CandidateCard> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      key: cardKey,
      flipOnTouch: false,
      front: Dialog(
          insetPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(31.0)),
          backgroundColor: Theme.of(context).colorScheme.onSecondaryContainer,
          child: SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.close),
                              onPressed: () {
                                Navigator.of(context).pop();
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
                                radius: 30,
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
                        const SizedBox(height: 8),
                        Text(
                          'I am a professional creative designer with 8 years of experience in management. I am a professional',
                          style: Theme.of(context).textTheme.caption?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 8),
                        const CandidateCardSegment(
                          workExperiences: [
                            ['Senior Graphic Designer', 'HABIB BANK LIMITED', 'December 2021 - Present'],
                            ['Senior Graphic Designer', 'HABIB BANK LIMITED', 'December 2021 - Present'],
                            ['Senior Graphic Designer', 'HABIB BANK LIMITED', 'December 2021 - Present']
                          ],
                          title: 'WORK EXPERIENCE',
                          extraInfo: '2 years',
                          showAtFirst: 2,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'SKILLS',
                          style: Theme.of(context).textTheme.button?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
                        ),
                        const SizedBox(height: 8),
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
                              backgroundColor: Theme.of(context).colorScheme.surface,
                              foregroundColor: Theme.of(context).colorScheme.primary,
                            ),
                            CustomChip(
                              text: 'Lorem Ipsum',
                              backgroundColor: Theme.of(context).colorScheme.tertiary,
                              foregroundColor: Theme.of(context).colorScheme.primary,
                            ),
                            CustomChip(
                              text: 'Lorem Ipsum',
                              backgroundColor: Theme.of(context).colorScheme.tertiary,
                              foregroundColor: Theme.of(context).colorScheme.primary,
                            ),
                            CustomChip(
                              text: 'Lorem Ipsum',
                              backgroundColor: Theme.of(context).colorScheme.onPrimary,
                              foregroundColor: Theme.of(context).colorScheme.primary,
                            ),
                            CustomChip(
                              text: 'Lorem Ipsum',
                              backgroundColor: Theme.of(context).colorScheme.tertiary,
                              foregroundColor: Theme.of(context).colorScheme.onTertiary,
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        const CandidateCardSegment(
                          workExperiences: [
                            ['ABC University', 'Bachelors of Arts', 'Graphic Design', 'December 2021 - Present'],
                            ['ABC University', 'Bachelors of Arts', 'Graphic Design', 'December 2021 - Present'],
                            ['ABC University', 'Bachelors of Arts', 'Graphic Design', 'December 2021 - Present']
                          ],
                          title: 'EDUCATION',
                          showAtFirst: 2,
                        ),
                        // add the flip icon
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.flip),
                              iconSize: 30,
                              color: Theme.of(context).colorScheme.onBackground,
                              onPressed: () => cardKey.currentState?.toggleCard(),
                            ),
                          ],
                        ),
                        const SizedBox(height: 50)
                      ],
                    ),
                  ),
                ),
                Positioned(
                    bottom: 0,
                    child: Row(
                      children: [
                        Container(
                            height: 48,
                            width: MediaQuery.of(context).size.width * 0.95 / 2,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(31)),
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'DISLIKE',
                                style: Theme.of(context).textTheme.button?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                              ),
                            )),
                        Container(
                            height: 48,
                            width: MediaQuery.of(context).size.width * 0.95 / 2,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(bottomRight: Radius.circular(31)),
                              color: Theme.of(context).colorScheme.primary,
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'LIKE',
                                style: Theme.of(context).textTheme.button?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                              ),
                            )),
                      ],
                    ))
              ],
            ),
          )),
      back: Dialog(
          insetPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(31.0)),
          backgroundColor: Theme.of(context).colorScheme.onSecondaryContainer,
          child: SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.close),
                              onPressed: () {
                                Navigator.of(context).pop();
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
                                radius: 30,
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
                        const SizedBox(height: 8),
                        Text(
                          'I am a professional creative designer with 8 years of experience in management. I am a professional',
                          style: Theme.of(context).textTheme.caption?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 8),
                        const CandidateCardSegment(
                          workExperiences: [
                            ['Figma Expert', 'Figma Corp.', '23 June 2019'],
                            ['Figma Expert', 'Figma Corp.', '23 June 2019'],
                            ['Figma Expert', 'Figma Corp.', '23 June 2019']
                          ],
                          title: 'CERTIFICATIONS',
                          showAtFirst: 1,
                        ),
                        const SizedBox(height: 8),
                        const CandidateCardSegment(
                          workExperiences: [
                            ['Best Design Awards', 'Global Design Hackathon', '23 June 2019'],
                            ['Best Design Awards', 'Global Design Hackathon', '23 June 2019'],
                            ['Best Design Awards', 'Global Design Hackathon', '23 June 2019']
                          ],
                          title: 'AWARDS',
                          showAtFirst: 1,
                        ),
                        const SizedBox(height: 8),
                        const CandidateCardSegmentPublication(
                          workExperiences: [
                            ['Impact of High Fidelty Design in Low Income Economy', 'Human Centered Design', 'The Design Journal', '06 Aug 2021'],
                          ],
                          title: 'PUBLICATIONS',
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'EXTERNAL LINKS',
                          style: Theme.of(context).textTheme.button?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
                        ),
                        const SizedBox(height: 8),
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
                              backgroundColor: Theme.of(context).colorScheme.surface,
                              foregroundColor: Theme.of(context).colorScheme.primary,
                              externalLink: true,
                            ),
                            CustomChip(
                              text: 'LinkedIn',
                              backgroundColor: Theme.of(context).colorScheme.tertiary,
                              foregroundColor: Theme.of(context).colorScheme.primary,
                              externalLink: true,
                            ),
                            CustomChip(
                              text: 'Dribble',
                              backgroundColor: Theme.of(context).colorScheme.tertiary,
                              foregroundColor: Theme.of(context).colorScheme.primary,
                              externalLink: true,
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.flip),
                              iconSize: 30,
                              color: Theme.of(context).colorScheme.onBackground,
                              onPressed: () => cardKey.currentState?.toggleCard(),
                            ),
                          ],
                        ),
                        const SizedBox(height: 50),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    bottom: 0,
                    child: Row(
                      children: [
                        Container(
                            height: 48,
                            width: MediaQuery.of(context).size.width * 0.95 / 2,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(31)),
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'DISLIKE',
                                style: Theme.of(context).textTheme.button?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                              ),
                            )),
                        Container(
                            height: 48,
                            width: MediaQuery.of(context).size.width * 0.95 / 2,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(bottomRight: Radius.circular(31)),
                              color: Theme.of(context).colorScheme.primary,
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'LIKE',
                                style: Theme.of(context).textTheme.button?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                              ),
                            )),
                      ],
                    ))
              ],
            ),
          )),
    );
  }
}
