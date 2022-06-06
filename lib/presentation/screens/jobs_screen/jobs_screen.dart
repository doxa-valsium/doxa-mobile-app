import 'package:auto_route/auto_route.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_app_bar.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_dotted_border.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_extended_card.dart';
import 'package:doxa_mobile_app/presentation/widgets/job_card.dart';
import 'package:doxa_mobile_app/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';

class JobsScreen extends StatelessWidget {
  static const String route = 'jobs-screen';

  const JobsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomAppBar(
          title: 'Jobs',
          showBackButton: false,
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    context.router.push(const JobFormFlowRoute());
                  },
                  child: CustomDottedBorder(
                    borderType: BorderType.RRect,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.only(top: 28, bottom: 22.82),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                          Iconify(
                            Mdi.plus_circle_outline,
                            size: 56,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          const SizedBox(height: 9.8),
                          Text(
                            'Create a New Job',
                            style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Theme.of(context).colorScheme.primary),
                          ),
                        ]),
                      )),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                GridView(
                  clipBehavior: Clip.none,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    mainAxisExtent: 180,
                  ),
                  children: const [
                    JobCard(isActive: true, buttonType1: ButtonType.primary),
                    JobCard(isActive: false, buttonType1: ButtonType.secondary),
                    JobCard(isActive: true, buttonType1: ButtonType.primary),
                    JobCard(isActive: false, buttonType1: ButtonType.secondary),
                    JobCard(isActive: true, buttonType1: ButtonType.primary),
                    JobCard(isActive: false, buttonType1: ButtonType.secondary),
                    JobCard(isActive: false, buttonType1: ButtonType.secondary),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
