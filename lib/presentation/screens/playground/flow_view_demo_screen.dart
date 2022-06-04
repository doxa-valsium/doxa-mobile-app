import 'package:doxa_mobile_app/presentation/widgets/flow_view/flow_screen.dart';
import 'package:doxa_mobile_app/presentation/widgets/flow_view/flow_screen_widgets.dart';
import 'package:doxa_mobile_app/presentation/widgets/flow_view/flow_view.dart';
import 'package:flutter/material.dart';

class FlowViewDemoScreen extends StatelessWidget {
  static const String route = 'flow-view-demo-screen';
  const FlowViewDemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FlowView(
          steps: [
            FlowScreen(
              title: 'Step 1 Title',
              anchor: FlowScreenDefaultAnchor(
                buttonText: 'Continue',
                onPressed: (context) {
                  FlowView.of(context).setIsLoading(true);
                  Future.delayed(const Duration(seconds: 6)).then((_) {
                    FlowView.of(context).setIsLoading(false);
                    FlowView.of(context).next();
                  });
                },
              ),
              child: const FlowViewDemoStepOne(),
            ),
            FlowScreen(
              title: 'Step 2 Title',
              anchor: FlowScreenDefaultAnchor(
                buttonText: 'Continue',
                onPressed: (context) {
                  FlowView.of(context).next();
                },
              ),
              child: const FlowViewDemoStepOne(),
            ),
            FlowScreen(
              title: 'Step 3 Title',
              anchor: FlowScreenDefaultAnchor(
                buttonText: 'Continue',
                onPressed: (context) {
                  FlowView.of(context).next();
                },
              ),
              child: const FlowViewDemoStepOne(),
            ),
          ],
        ),
      ),
    );
  }
}

class FlowViewDemoStepOne extends StatelessWidget {
  const FlowViewDemoStepOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        TextField(
          decoration: InputDecoration(
            hintText: 'Enter your name',
          ),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: 'Enter your name',
          ),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: 'Enter your name',
          ),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: 'Enter your name',
          ),
        ),
      ],
    );
  }
}
