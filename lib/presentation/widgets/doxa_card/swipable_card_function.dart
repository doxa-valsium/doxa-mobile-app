import 'package:doxa_mobile_app/presentation/widgets/candidate_card/back_candidate_card_content.dart';
import 'package:doxa_mobile_app/presentation/widgets/candidate_card/front_candidate_card_content.dart';
import 'package:doxa_mobile_app/presentation/widgets/doxa_card/doxa_card.dart';
import 'package:doxa_mobile_app/presentation/widgets/job_card/back_job_card_content.dart';
import 'package:doxa_mobile_app/presentation/widgets/job_card/front_job_card_content.dart';
import 'package:flutter/material.dart';
import 'package:swipable_stack/swipable_stack.dart';

Future<dynamic> swipableCards(BuildContext context, SwipableStackController swipecontroller, bool isCandidate) async {
  return showDialog(
      context: context,
      builder: (context) => SwipableStack(
            controller: swipecontroller,
            allowVerticalSwipe: false,
            itemCount: 10,
            builder: (context, properties) {
              if (isCandidate) {
                return DoxaCard(
                  swipecontroller: swipecontroller,
                  backWidget: const BackCandidateCardContent(),
                  frontWidget: const FrontCandidateCardContent(),
                );
              } else {
                return DoxaCard(
                  swipecontroller: swipecontroller,
                  backWidget: const FrontJobCardContent(),
                  frontWidget: const BackJobCardContent(),
                );
              }
            },
          ));
}
