import 'package:doxa_mobile_app/presentation/widgets/candidate_card/back_candidate_card_content.dart';
import 'package:doxa_mobile_app/presentation/widgets/candidate_card/front_candidate_card_content.dart';
import 'package:doxa_mobile_app/presentation/widgets/doxa_card/doxa_card.dart';
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
              return DoxaCard(
                swipecontroller: swipecontroller,
                backWidget: const BackCandidateCardContent(),
                frontWidget: const FrontCandidateCardContent(),
              );
            },
          ));
}
