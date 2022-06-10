import 'package:doxa_mobile_app/business_logic/blocs/profile_bloc/profile_bloc.dart';
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

class ProfileScreen extends StatelessWidget {
  static const String route = 'profile-screen';

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProfileBloc profileBloc = BlocProvider.of<ProfileBloc>(context);
    if (profileBloc.state is ProfileScreenInitial) {
      profileBloc.add(FetchProfile());
    }
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: CustomAppBarAndBody(
          title: 'Profile',
          showBackButton: false,
          body: BlocBuilder<ProfileBloc, ProfileState>(
            bloc: profileBloc,
            builder: (context, state) {
              if (state is ProfileScreenLoaded) {
                return SingleChildScrollView(
                  padding: const EdgeInsets.only(top: 60.0, left: 16.0, right: 16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ProfileStackHandler(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            const SizedBox(height: 4.0),
                            const ProfileDetails(
                              name: 'Ahmed Raza',
                              position: 'Creative Designer',
                              email: 'ahmedraza@gmail.com',
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
                              onTap: () {},
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
                              onTap: () {},
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
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
