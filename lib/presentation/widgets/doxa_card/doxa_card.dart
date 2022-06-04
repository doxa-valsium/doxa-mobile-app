import 'dart:math';
import 'package:doxa_mobile_app/presentation/widgets/candidate_card/back_candidate_card_content.dart';
import 'package:doxa_mobile_app/presentation/widgets/doxa_card/custom_scrollbar.dart';
import 'package:doxa_mobile_app/presentation/widgets/candidate_card/front_candidate_card_content.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:swipable_stack/swipable_stack.dart';

class DoxaCard extends StatefulWidget {
  final SwipableStackController swipecontroller;
  final Widget backWidget;
  final Widget frontWidget;
  const DoxaCard({Key? key, required this.swipecontroller, required this.backWidget, required this.frontWidget}) : super(key: key);

  @override
  State<DoxaCard> createState() => _DoxaCardState();
}

class _DoxaCardState extends State<DoxaCard> {
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
        backgroundColor: Colors.white,
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
                        // const BackCandidateCardContent(),
                        widget.backWidget,
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
        backgroundColor: Colors.white,
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
                        // const FrontCandidateCardContent(),
                        widget.frontWidget,
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
