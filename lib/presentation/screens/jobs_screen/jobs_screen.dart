import 'package:auto_route/auto_route.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:doxa_mobile_app/business_logic/blocs/jobs/get_jobs_bloc/get_jobs_bloc.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_app_bar_and_body.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_dotted_border.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_extended_card.dart';
import 'package:doxa_mobile_app/presentation/widgets/job_card.dart';
import 'package:doxa_mobile_app/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';

class JobsScreen extends StatefulWidget {
  static const String route = 'jobs-screen';

  const JobsScreen({Key? key}) : super(key: key);

  @override
  State<JobsScreen> createState() => _JobsScreenState();
}

class _JobsScreenState extends State<JobsScreen> {
  late GetJobsBloc _getJobsBloc;

  @override
  void initState() {
    _getJobsBloc = BlocProvider.of<GetJobsBloc>(context);
    _getJobsBloc.add(FetchJobs());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomAppBarAndBody(
          title: 'Jobs',
          showBackButton: false,
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: BlocBuilder<GetJobsBloc, GetJobsState>(
              bloc: _getJobsBloc,
              builder: (context, state) {
                if (state is GetJobsScreenLoaded) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.router.push(JobFormFlowRoute(isEdit: false));
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
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
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
                                ],
                              ),
                            )),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      GridView.builder(
                        clipBehavior: Clip.none,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,
                          mainAxisExtent: 180,
                        ),
                        itemCount: state.jobs.length,
                        itemBuilder: (context, index) {
                          if (state.jobs[index].isActive == true) {
                            return JobCard(
                              isActive: state.jobs[index].isActive,
                              buttonType1: ButtonType.primary,
                              totalMatches: state.jobs[index].totalMatches,
                              jobTitle: state.jobs[index].jobTitle,
                              location: state.jobs[index].location.city.label,
                              employmentType: state.jobs[index].employmentType.label,
                              onTap: () {
                                context.router.push(SingleJobRoute(jobId: state.jobs[index].jobId));
                              },
                            );
                          } else {
                            return JobCard(
                              isActive: state.jobs[index].isActive,
                              buttonType1: ButtonType.secondary,
                              totalMatches: state.jobs[index].totalMatches,
                              jobTitle: state.jobs[index].jobTitle,
                              location: state.jobs[index].location.city.label,
                              employmentType: state.jobs[index].employmentType.label,
                              onTap: () {
                                context.router.push(SingleJobRoute(jobId: state.jobs[index].jobId));
                              },
                            );
                          }
                        },
                      ),
                    ],
                  );
                } else if (state is GetJobsScreenError) {
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
        ),
      ),
    );
  }
}
