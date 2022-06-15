import 'package:doxa_mobile_app/presentation/widgets/candidate_card/back_candidate_card_content.dart';
import 'package:doxa_mobile_app/presentation/widgets/candidate_card/front_candidate_card_content.dart';
import 'package:doxa_mobile_app/presentation/widgets/doxa_card/doxa_card.dart';
import 'package:doxa_mobile_app/presentation/widgets/job_card/back_job_card_content.dart';
import 'package:doxa_mobile_app/presentation/widgets/job_card/front_job_card_content.dart';
import 'package:doxa_mobile_app/routes/router.gr.dart';
import 'package:doxa_mobile_app/presentation/widgets/doxa_card/swipable_card_function.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:swipable_stack/swipable_stack.dart';

class PlaygroundScreen extends StatelessWidget {
  static const String route = 'playground';

  const PlaygroundScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final swipecontroller = SwipableStackController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Playground'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: () {
                  context.router.push(const NavigatorRoute());
                },
                child: const Text("Main App"),
              ),
              MaterialButton(
                onPressed: () {
                  context.router.push(const ThemeTestRoute());
                },
                child: const Text("Go to Theme Testing"),
              ),
              MaterialButton(
                onPressed: () {
                  context.router.push(const PulsingButtonRoute());
                },
                child: const Text("Go to Pusling Button"),
              ),
              MaterialButton(
                onPressed: () {
                  context.router.push(const CustomWidgetsRoute());
                },
                child: const Text("Custom Widgets"),
              ),
              MaterialButton(
                onPressed: () {
                  context.router.push(const ManageImagesRoute());
                },
                child: const Text("Go to manage images"),
              ),
              MaterialButton(
                onPressed: () {
                  context.router.push(LoginRoute());
                },
                child: const Text("Go to Login Screen"),
              ),
              MaterialButton(
                onPressed: () {
                  context.router.push(RegistrationFlowRoute());
                },
                child: const Text("Go to Registration Screen"),
              ),
              MaterialButton(
                onPressed: () {
                  // context.router.push(AddCompanyRoute());
                },
                child: const Text("Add Company Screen"),
              ),
              MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => DoxaCard(
                            swipecontroller: swipecontroller,
                            backWidget: const BackCandidateCardContent(),
                            frontWidget: const FrontCandidateCardContent(),
                          ));
                },
                child: const Text("Candidate Single Card"),
              ),
              MaterialButton(
                onPressed: () {
                  swipableCards(context, swipecontroller, true);
                },
                child: const Text("Candidate Swipable Cards"),
              ),
              MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => DoxaCard(
                            swipecontroller: swipecontroller,
                            backWidget: const FrontJobCardContent(),
                            frontWidget: const BackJobCardContent(),
                          ));
                },
                child: const Text("Job Single Card"),
              ),
              MaterialButton(
                onPressed: () {
                  swipableCards(context, swipecontroller, false);
                },
                child: const Text("Job Swipable Cards"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
