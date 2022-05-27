import 'dart:math';
import 'package:auto_route/auto_route.dart';
import 'package:doxa_mobile_app/presentation/widgets/avatar.dart';
import 'package:doxa_mobile_app/presentation/widgets/candidate_card/candidate_card_pub.dart';
import 'package:doxa_mobile_app/presentation/widgets/candidate_card/candidate_card_segments.dart';
import 'package:doxa_mobile_app/presentation/widgets/candidate_card/custom_scrollbar.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_chip.dart';
import 'package:doxa_mobile_app/styles.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:swipable_stack/swipable_stack.dart';

class CandidateCard extends StatefulWidget {
  final SwipableStackController swipecontroller;
  const CandidateCard({Key? key, required this.swipecontroller}) : super(key: key);

  @override
  State<CandidateCard> createState() => _CandidateCardState();
}

class _CandidateCardState extends State<CandidateCard> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  bool isFlipped = false;

  Widget transtion(Widget widget, Animation<double> animation) {
    final rotateAnim = Tween(begin: pi, end: 0.0).animate(animation);
    return AnimatedBuilder(
      animation: rotateAnim,
      child: widget,
      builder: (context, widget) {
        final isUnder = (ValueKey(isFlipped) != widget?.key);
        var tilt = ((animation.value - 0.5).abs() - 0.5) * 0.003;
        tilt *= isUnder ? -1.0 : 1.0;
        final value = isUnder ? min(rotateAnim.value, pi / 2) : rotateAnim.value;
        return Transform(
          transform: Matrix4.rotationY(value)..setEntry(3, 0, tilt),
          alignment: Alignment.center,
          child: widget,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
        duration: const Duration(milliseconds: 1000),
        switchInCurve: Curves.ease,
        switchOutCurve: Curves.ease.flipped,
        transitionBuilder: transtion,
        child: isFlipped ? frontCadidateCard(context) : backCandidateCard(context));
  }

  Dialog backCandidateCard(BuildContext context) {
    return Dialog(
        key: const ValueKey(true),
        insetPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(31.0)),
        backgroundColor: Theme.of(context).colorScheme.onSecondaryContainer,
        child: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              CustomScrollbar(
                scrollbarMargin: const EdgeInsets.only(top: 36, right: 8.0),
                thumbColor: Theme.of(context).colorScheme.primary,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 22.0),
                    child: Column(
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
                        // add the flip icon
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.flip),
                              iconSize: 30,
                              color: Theme.of(context).colorScheme.onBackground,
                              onPressed: () => setState(() {
                                isFlipped = !isFlipped;
                              }),
                            ),
                          ],
                        ),
                        const SizedBox(height: 50)
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                  bottom: 0,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          widget.swipecontroller.next(swipeDirection: SwipeDirection.left, duration: const Duration(milliseconds: 1200));
                          // widget.swipecontroller.currentIndex += 1;
                        },
                        child: Container(
                            height: 48,
                            width: (MediaQuery.of(context).size.width - 24) / 2,
                            // width: widget,
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
                      ),
                      GestureDetector(
                        onTap: () {
                          widget.swipecontroller.next(swipeDirection: SwipeDirection.right, duration: const Duration(milliseconds: 1200));
                        },
                        child: Container(
                            height: 48,
                            width: (MediaQuery.of(context).size.width - 24) / 2,
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
                      ),
                    ],
                  ))
            ],
          ),
        ));
  }

  Dialog frontCadidateCard(BuildContext context) {
    return Dialog(
        key: const ValueKey(false),
        insetPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(31.0)),
        backgroundColor: Theme.of(context).colorScheme.onSecondaryContainer,
        child: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              CustomScrollbar(
                scrollbarMargin: const EdgeInsets.only(top: 36, right: 8.0),
                thumbColor: Theme.of(context).colorScheme.primary,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 22, right: 22, top: 15),
                    child: Column(
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
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.flip),
                              iconSize: 30,
                              color: Theme.of(context).colorScheme.onBackground,
                              onPressed: () => setState(() {
                                isFlipped = !isFlipped;
                              }),
                            ),
                          ],
                        ),
                        const SizedBox(height: 50),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                  bottom: 0,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          widget.swipecontroller.next(
                            swipeDirection: SwipeDirection.left,
                            duration: const Duration(milliseconds: 1200),
                          );
                        },
                        child: Container(
                            height: 48,
                            width: (MediaQuery.of(context).size.width - 24) / 2,
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
                      ),
                      GestureDetector(
                        onTap: () {
                          widget.swipecontroller.next(swipeDirection: SwipeDirection.right, duration: const Duration(milliseconds: 1200));
                        },
                        child: Container(
                            height: 48,
                            width: (MediaQuery.of(context).size.width - 24) / 2,
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
                      ),
                    ],
                  ))
            ],
          ),
        ));
  }
}
