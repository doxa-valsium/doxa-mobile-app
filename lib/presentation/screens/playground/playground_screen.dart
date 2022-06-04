import 'package:doxa_mobile_app/presentation/widgets/candidate_card/back_candidate_card_content.dart';
import 'package:doxa_mobile_app/presentation/widgets/candidate_card/front_candidate_card_content.dart';
import 'package:doxa_mobile_app/presentation/widgets/doxa_card/doxa_card.dart';
import 'package:doxa_mobile_app/routes/router.gr.dart';
import 'package:doxa_mobile_app/presentation/widgets/doxa_card/swipable_card_function.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:swipable_stack/swipable_stack.dart';

class PlaygroundScreen extends StatelessWidget {
  static const String route = '/';

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
                  // Get.toNamed(JobsPage.route);
                },
                child: const Text("Go to manage images"),
              ),
              MaterialButton(
                onPressed: () {
                  // Get.toNamed(SingleJobOpened.route);
                },
                child: const Text("Go to Single Job Opened"),
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
                child: const Text("Dialogue Box 2 Custom Animation"),
              ),
              MaterialButton(
                onPressed: () {
                  swipableCards(context, swipecontroller);
                },
                child: const Text("Swipable Cards"),
              ),
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
                  context.router.push(const FlowViewDemoRoute());
                },
                child: const Text("Go to Flow View Demo"),
              ),
              MaterialButton(
                onPressed: () {
                  context.router.push(JobFormFlowRoute());
                },
                child: const Text("Go to Job Form"),
              ),
              MaterialButton(
                onPressed: () {
                  context.router.push(LoginRoute());
                },
                child: const Text("Go to Login Screen"),
              ),
              MaterialButton(
                onPressed: () {
                  context.router.push(RegistrationRoute());
                },
                child: const Text("Go to Registration Screen"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
