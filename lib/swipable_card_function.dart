import 'package:doxa_mobile_app/presentation/widgets/candidate_card.dart';
import 'package:flutter/material.dart';
import 'package:swipable_stack/swipable_stack.dart';

Future<dynamic> swipableCards(BuildContext context, SwipableStackController swipecontroller) {
  return showDialog(
      context: context,
      builder: (context) => SwipableStack(
            controller: swipecontroller,
            allowVerticalSwipe: false,
            itemCount: 10,
            builder: (context, properties) {
              return CandidateCard(
                swipecontroller: swipecontroller,
              );
            },
          ));
}
