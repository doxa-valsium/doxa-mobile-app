// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:doxa_mobile_app/presentation/screens/profile_screen/local_widgets/profile_avatar.dart';
import 'package:doxa_mobile_app/presentation/screens/profile_screen/local_widgets/profile_menu_item.dart';
import 'package:doxa_mobile_app/presentation/widgets/avatar.dart';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class OraanLogoContainer extends StatelessWidget {
  final Widget child;

  const OraanLogoContainer({required this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
                padding: EdgeInsets.only(top: 44, left: 20, right: 20, bottom: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [BoxShadow(blurRadius: 30, color: Colors.grey[300]!, offset: Offset(0, 12))],
                  border: Border.all(color: Theme.of(context).primaryColor, width: 2),
                ),
                child: child),
            Positioned.fill(
              top: -40,
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(color: Theme.of(context).primaryColor, width: 2.0),
                  ),
                  child: Avatar(
                    avatarUrl:
                        'https://1.bp.blogspot.com/-W_7SWMP5Rag/YTuyV5XvtUI/AAAAAAAAuUQ/hm6bYcvlFgQqgv1uosog6K8y0dC9eglTQCLcBGAsYHQ/s880/Best-Profile-Pic-For-Boys%2B%25281%2529.jpg',
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ProfileScreen extends StatelessWidget {
  static const String route = 'profile-screen';

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 56.0, left: 16.0, right: 16.0),
          child: Column(
            children: [
              OraanLogoContainer(
                child: Column(children: [
                  Container(
                    height: 100,
                    width: double.infinity,
                    color: Colors.green,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 200,
                    width: double.infinity,
                    color: Colors.green,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 200,
                    width: double.infinity,
                    color: Colors.green,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                ]),
              )
              // Stack(
              //   children: [
              //     Container(
              //       height: 200,
              //       width: double.infinity,
              //       color: Colors.green,
              //     ),
              //     Container(
              //       height: 200,
              //       width: double.infinity,
              //       color: Colors.green,
              //     ),
              //     Container(
              //       height: 200,
              //       width: double.infinity,
              //       color: Colors.green,
              //     ),
              //     Container(
              //       height: 200,
              //       width: double.infinity,
              //       color: Colors.green,
              //     ),
              //     Container(
              //       height: 200,
              //       width: double.infinity,
              //       color: Colors.green,
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
