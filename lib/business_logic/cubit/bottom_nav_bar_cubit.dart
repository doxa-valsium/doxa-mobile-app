import 'package:bloc/bloc.dart';
import 'package:doxa_mobile_app/business_logic/cubit/navigator_page.dart';
import 'package:doxa_mobile_app/presentation/routes2.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'bottom_nav_bar_state.dart';

class BottomNavBarCubit extends Cubit<BottomNavBarState> {
  BottomNavBarCubit() : super(BottomNavBarState(currentTab: 0));

  void changeTab(int index) => emit(BottomNavBarState(currentTab: index));

  // currentNavigatorPage. .

}
