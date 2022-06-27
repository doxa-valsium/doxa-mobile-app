import 'package:doxa_mobile_app/business_logic/blocs/auth/auth_bloc.dart';
import 'package:doxa_mobile_app/business_logic/blocs/profile/profile_bloc.dart';
import 'package:doxa_mobile_app/data/repositories/jobs_repository/supabase_jobs_repository.dart';
import 'package:doxa_mobile_app/logger.dart';
import 'package:doxa_mobile_app/models/models.dart';
import 'package:doxa_mobile_app/presentation/screens/profile_screen/local_widgets/profile_details.dart';
import 'package:doxa_mobile_app/presentation/screens/profile_screen/local_widgets/profile_stack_handler.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_app_bar_and_body.dart';
import 'package:doxa_mobile_app/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:doxa_mobile_app/presentation/screens/profile_screen/local_widgets/profile_menu_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:iconify_flutter/icons/teenyicons.dart';
import 'package:iconify_flutter/icons/uiw.dart';
import 'package:auto_route/auto_route.dart';

class ProfileScreen extends StatefulWidget {
  static const String route = 'profile-screen';

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late ProfileBloc _profileBloc;

  @override
  void initState() {
    _profileBloc = BlocProvider.of<ProfileBloc>(context);
    _profileBloc.add(FetchProfile());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomAppBarAndBody(
          title: 'Profile',
          showBackButton: false,
          body: BlocBuilder<ProfileBloc, ProfileState>(
            bloc: _profileBloc,
            builder: (context, state) {
              if (state is ProfileScreenLoaded) {
                final user = state.user;
                if (user is Recruiter) {
                  return SingleChildScrollView(
                    padding: const EdgeInsets.only(top: 60.0, left: 16.0, right: 16.0),
                    child: ProfileStackHandler(
                      avatarUrl: user.profilePictureUrl,
                      child: Column(
                        //mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(height: 4.0),
                          ProfileDetails(
                            name: '${user.firstName} ${user.lastName}',
                            jobTitle: user.jobTitle?.label ?? 'N/A',
                            email: state.user.email,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          ProfileMenuItem(
                            isEditProfile: true,
                            menuIcon: Iconify(
                              Teenyicons.edit_outline,
                              color: Theme.of(context).colorScheme.primary,
                              size: 24.0,
                            ),
                            menuText: 'EDIT PROFILE',
                            onTap: () {},
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          ProfileMenuItem(
                            isEditProfile: false,
                            menuIcon: Iconify(
                              Mdi.office_building_cog_outline,
                              color: Theme.of(context).colorScheme.onSurface,
                              size: 24.0,
                            ),
                            menuText: 'COMPANY PROFILE',
                            onTap: () {
                              context.router.push(const CompanyProfileRoute());
                            },
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          ProfileMenuItem(
                            isEditProfile: false,
                            menuIcon: Iconify(
                              Uiw.setting_o,
                              color: Theme.of(context).colorScheme.onSurface,
                              size: 24.0,
                            ),
                            menuText: 'SETTINGS',
                            onTap: () async {
                              Map<String, dynamic> job = {
                                'title': 1,
                                'headline': 'asd',
                                'workplace_type': 3,
                                'required_experience': 1,
                                'salary_range_starting': 1,
                                'salary_range_ending': 2,
                                'description': 'description',
                                'industry': 1,
                                'is_active': true,
                                'company': 6,
                                'recruiter': '8bd2615b-3e07-476e-8017-81b16ae0da69',
                                'employement_type': 1,
                                'location_city': 3,

                                //event.jobFormData['required_experience'].toInt(),

                                //event.jobFormData['salary_range_starting'].toInt(),
                                //event.jobFormData['salary_range_ending'].toInt(),

                                //TODO : this is hardcoded for now but should be dynamic
                              };
                              SupabaseJobsRepository testData = SupabaseJobsRepository();
                              await testData.getSingleJob(recruiterId: '8bd2615b-3e07-476e-8017-81b16ae0da69', jobId: 49);
                              //await testData.getCompleteJob(recruiterId: '8bd2615b-3e07-476e-8017-81b16ae0da69');
                            },
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          ProfileMenuItem(
                            isEditProfile: false,
                            menuIcon: Iconify(
                              Mdi.logout,
                              color: Theme.of(context).colorScheme.onSurface,
                              size: 24.0,
                            ),
                            menuText: 'LOGOUT',
                            onTap: () {
                              BlocProvider.of<AuthBloc>(context).add(AuthenticationLogoutRequested());
                            },
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                        ],
                      ),
                    ),
                  );
                } else {
                  return const Center(
                    child: Text('Candidate profile'),
                  );
                }
              } else if (state is ProfileScreenError) {
                return Center(
                  child: Text(state.errorMessage),
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
