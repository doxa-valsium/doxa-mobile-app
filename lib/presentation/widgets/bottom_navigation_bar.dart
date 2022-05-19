// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:doxa_mobile_app/styles.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ep.dart';
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
          topRight: Radius.circular(40),
          topLeft: Radius.circular(40),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40),
          topLeft: Radius.circular(40),
        ),
        child: BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            BottomNavigationBarItem(
              icon: Iconify(
                Teenyicons.home_alt_outline,
                color: Theme.of(context).colorScheme.onSurface,
                size: 24.0,
              ),
              activeIcon: Iconify(
                Teenyicons.home_alt_outline,
                color: Theme.of(context).colorScheme.primary,
                size: 24.0,
              ),
              backgroundColor: Colors.blue,
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Iconify(
                Ep.suitcase,
                color: Theme.of(context).colorScheme.onSurface,
                size: 24.0,
              ),
              activeIcon: Iconify(
                Ep.suitcase,
                color: Theme.of(context).colorScheme.primary,
                size: 24.0,
              ),
              label: 'Jobs',
            ),
            BottomNavigationBarItem(
              icon: Iconify(
                Teenyicons.chat_typing_outline,
                color: Theme.of(context).colorScheme.onSurface,
                size: 24.0,
              ),
              activeIcon: Iconify(
                Teenyicons.chat_typing_outline,
                color: Theme.of(context).colorScheme.primary,
                size: 24.0,
              ),
              label: 'Messages',
            ),
            BottomNavigationBarItem(
              icon: Iconify(
                Teenyicons.user_circle_outline,
                color: Theme.of(context).colorScheme.onSurface,
                size: 24.0,
              ),
              activeIcon: Iconify(
                Teenyicons.user_circle_outline,
                color: Theme.of(context).colorScheme.primary,
                size: 24.0,
              ),
              label: 'Profile',
              //backgroundColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
