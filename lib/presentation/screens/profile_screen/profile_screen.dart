import 'package:doxa_mobile_app/presentation/screens/profile_screen/local_widgets/profile_stack_handler.dart';
import 'package:doxa_mobile_app/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:doxa_mobile_app/presentation/screens/profile_screen/local_widgets/profile_menu_item.dart';
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
    return Scaffold(
        extendBody: true,
        body: SafeArea(
          child: NestedScrollView(
            floatHeaderSlivers: true,
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              SliverAppBar(
                floating: true,
                snap: true,
                elevation: 0.0,
                title: Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 16.0),
                  child: Text(
                    'Profile',
                    style: Theme.of(context).textTheme.headline5?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                  ),
                ),
                automaticallyImplyLeading: false,
                backgroundColor: Colors.transparent,
              ),
            ],
            body: SingleChildScrollView(
              padding: const EdgeInsets.only(top: 60.0, left: 16.0, right: 16.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ProfileStackHandler(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const SizedBox(height: 4.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          //mainAxisSize: MainAxisSize.max,
                          children: [
                            Flexible(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Ahmed Raza',
                                    style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                                    softWrap: false,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 4.0),
                                  Text(
                                    'Creative Designer - Software Housasdasdae',
                                    style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 8.0),
                                  Text(
                                    'ahmedraadasdasddasadassadza@gmail.com',
                                    style: Theme.of(context).textTheme.caption?.copyWith(color: Theme.of(context).colorScheme.onSurface),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ],
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
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
