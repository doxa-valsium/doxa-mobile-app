// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class BottomNavBar extends StatelessWidget {
  final TabsRouter tabsRouter;
  const BottomNavBar({
    required this.tabsRouter,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(color: Color.fromRGBO(34, 32, 32, 0.25), spreadRadius: 2, blurRadius: 10),
        ],
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
            type: BottomNavigationBarType.fixed,
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.work),
                backgroundColor: Colors.blue,
                label: 'Jobs',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: 'Messages',
                backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
                backgroundColor: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
