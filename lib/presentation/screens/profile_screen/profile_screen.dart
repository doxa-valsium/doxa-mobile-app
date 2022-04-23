import 'package:doxa_mobile_app/presentation/screens/profile_screen/local_widgets/profile_avatar.dart';
import 'package:doxa_mobile_app/presentation/screens/profile_screen/local_widgets/profile_menu_item.dart';

import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static const String route = 'profile-screen';

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 16.0),
          child: Text(
            'Profile',
            style: Theme.of(context).textTheme.headline5?.copyWith(color: Theme.of(context).colorScheme.onBackground),
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 72.0, left: 16.0, right: 16.0),
          child: Stack(
            clipBehavior: Clip.none,
            //alignment: Alignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondaryContainer,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    //bottomRight: Radius.elliptical(15, 15),
                  ),
                ),
              ),
              const ProfileAvatar(
                avatarUrl:
                    'https://1.bp.blogspot.com/-W_7SWMP5Rag/YTuyV5XvtUI/AAAAAAAAuUQ/hm6bYcvlFgQqgv1uosog6K8y0dC9eglTQCLcBGAsYHQ/s880/Best-Profile-Pic-For-Boys%2B%25281%2529.jpg',
              ),
              Positioned(
                top: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      height: 72.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Center(
                              child: SizedBox(
                                width: 160.0,
                                child: Text(
                                  'Ahmed Rzxdasdadadasaza',
                                  style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Creative Designer - Software House',
                            style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            'ahmedraza@gmail.com',
                            style: Theme.of(context).textTheme.caption?.copyWith(color: Theme.of(context).colorScheme.onSurface),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Container(
                      height: 320.0,
                      //width: 400.0, // media query
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: ProfileMenuItem(
                              menuIcon: Icon(
                                Icons.edit,
                                color: Theme.of(context).colorScheme.onSurface,
                                size: 24.0,
                              ),
                              menuText: 'Edit Profile',
                            ),
                          ),
                          const SizedBox(height: 16.0),
                          Expanded(
                            child: ProfileMenuItem(
                              menuIcon: Icon(
                                Icons.settings,
                                color: Theme.of(context).colorScheme.onSurface,
                                size: 24.0,
                              ),
                              menuText: 'Company Profile',
                            ),
                          ),
                          const SizedBox(height: 16.0),
                          Expanded(
                            child: ProfileMenuItem(
                              menuIcon: Icon(
                                Icons.settings,
                                color: Theme.of(context).colorScheme.onSurface,
                                size: 24.0,
                              ),
                              menuText: 'Settings',
                            ),
                          ),
                          const SizedBox(height: 16.0),
                          Expanded(
                            child: ProfileMenuItem(
                              menuIcon: Icon(
                                Icons.logout,
                                color: Theme.of(context).colorScheme.onSurface,
                                size: 24.0,
                              ),
                              menuText: 'Logout',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
