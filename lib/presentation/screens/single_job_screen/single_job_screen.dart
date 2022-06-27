import 'package:auto_route/auto_route.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:doxa_mobile_app/business_logic/blocs/jobs/get_single_job_bloc/get_single_job_bloc.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_app_bar_and_body.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_extended_card.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_dotted_border.dart';
import 'package:doxa_mobile_app/presentation/screens/single_job_screen/local_widgets/single_job_card.dart';
import 'package:doxa_mobile_app/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';

class SingleJobScreen extends StatefulWidget {
  static const String route = 'single-job-screen';
  final int jobId;

  const SingleJobScreen({Key? key, required this.jobId}) : super(key: key);

  @override
  State<SingleJobScreen> createState() => _SingleJobScreenState();
}

class _SingleJobScreenState extends State<SingleJobScreen> {
  late GetSingleJobBloc _getSingleJobBloc;

  @override
  void initState() {
    _getSingleJobBloc = BlocProvider.of<GetSingleJobBloc>(context);
    _getSingleJobBloc.add(FetchSingleJob(jobId: widget.jobId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<GetSingleJobBloc, GetSingleJobState>(
          bloc: _getSingleJobBloc,
          builder: (context, state) {
            if (state is GetSingleJobScreenLoaded) {
              return CustomAppBarAndBody(
                title: 'JOB ID : ${widget.jobId} Job Title : ${state.job.jobTitle} ',
                showBackButton: true,
                body: SingleChildScrollView(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: CustomDottedBorder(
                              borderType: BorderType.RRect,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Theme.of(context).colorScheme.secondary,
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    context.router.push(JobFormFlowRoute(isEdit: false));
                                  },
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 28, bottom: 22.82),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const Iconify(
                                            Mdi.briefcase_edit_outline,
                                            size: 56,
                                            color: Color(0xFF0061FE),
                                          ),
                                          const SizedBox(height: 9.8),
                                          Text(
                                            'Edit Job',
                                            style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Theme.of(context).colorScheme.primary),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Expanded(
                            child: AvatarGlow(
                              glowColor: Theme.of(context).colorScheme.primary,
                              endRadius: 90.0,
                              duration: const Duration(milliseconds: 2000),
                              repeat: true,
                              showTwoGlows: true,
                              repeatPauseDuration: const Duration(milliseconds: 100),
                              child: Container(
                                width: 100.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [Theme.of(context).colorScheme.primary, Theme.of(context).colorScheme.secondary]),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 9),
                      Text(
                        'Matches (16)',
                        style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.black),
                      ),
                      const SizedBox(height: 9),
                      GridView(
                        clipBehavior: Clip.none,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisExtent: 200,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 20,
                        ),
                        children: const [
                          SingleJobCard(newMessage: true, buttonType1: ButtonType.primary),
                          SingleJobCard(newMessage: false, buttonType1: ButtonType.secondary),
                          SingleJobCard(newMessage: true, buttonType1: ButtonType.primary),
                          SingleJobCard(newMessage: true, buttonType1: ButtonType.primary),
                          SingleJobCard(newMessage: true, buttonType1: ButtonType.primary),
                          SingleJobCard(newMessage: false, buttonType1: ButtonType.secondary),
                        ],
                      )
                    ],
                  ),
                ),
              );
            } else if (state is GetSingleJobScreenError) {
              return Center(
                child: Text(state.errorMessage),
              );
            } else {
              return Column(
                children: const [
                  Center(
                    child: CircularProgressIndicator(),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
