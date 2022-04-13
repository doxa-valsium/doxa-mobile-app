import 'dart:developer';

import 'package:doxa_mobile_app/business_logic/cubit/bottom_nav_bar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../services/environment_config_service.dart';

class NavigatorScreen extends StatefulWidget {
  static const String route = '/navigator-screen';
  const NavigatorScreen({Key? key}) : super(key: key);

  @override
  State<NavigatorScreen> createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
    final BottomNavBarCubit _bloc = BottomNavBarCubit();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _bloc,
      child: Scaffold(
        bottomNavigationBar: BlocConsumer<BottomNavBarCubit, BottomNavBarState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
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
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(39),
                  topLeft: Radius.circular(39),
                ),
                child: SizedBox(
                  height: 80,
                  child: BottomNavigationBar(
                    currentIndex: state.currentTab,
                    onTap: (index) {
                      context.read<BottomNavBarCubit>().changeTab(index);
                    },
                    type: BottomNavigationBarType.fixed,
                    items: state.navigatorPages!.map((page) => BottomNavigationBarItem(icon: Icon(page.navIcon), label: page.navLabel)).toList(),

                    /* const <BottomNavigationBarItem>[
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
                            ],*/
                  ),
                ),
              ),
            );
          },
        ),
        body: BlocConsumer<BottomNavBarCubit, BottomNavBarState>(
          bloc: _bloc,
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            return IndexedStack(
              index: state.currentTab,
              children: state.navigatorPages!
                  .map((page) => Navigator(
                        key: page.navKey, //page.navKey,
                        onGenerateRoute: page.routes.getRoute,
                      ))
                  .toList(),
            );
          },
        ),
      ),
    );
  }
}
