// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:doxa_mobile_app/styles.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/ep.dart';
import 'package:iconify_flutter/icons/gg.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:iconify_flutter/icons/teenyicons.dart';

class BottomNavBar extends StatelessWidget {
  final TabsRouter tabsRouter;
  const BottomNavBar({
    required this.tabsRouter,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: Styles.elevation1,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(39),
          topLeft: Radius.circular(39),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(39),
          topLeft: Radius.circular(39),
        ),
        child: SizedBox(
          height: 80,
          child: BottomNavigationBar(
            //TODO: The Iconfiy Icons are not reacting to the theme defined in the style.dart.
            type: BottomNavigationBarType.fixed,
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: [
              BottomNavigationBarItem(
                icon: Iconify(
                  Teenyicons.home_alt_outline,
                  color: Theme.of(context).colorScheme.primary,
                  size: 25.0,
                ),
                backgroundColor: Colors.blue,
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Iconify(
                  Ep.suitcase,
                  size: 25.0,
                ),
                label: 'Jobs',
              ),
              BottomNavigationBarItem(
                icon: Iconify(
                  Teenyicons.chat_typing_outline,
                  size: 25.0,
                ),
                label: 'Messages',
              ),
              BottomNavigationBarItem(
                icon: Iconify(
                  Teenyicons.user_circle_outline,
                  size: 25.0,
                ),
                label: 'Profile',
                //backgroundColor: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
