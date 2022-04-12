import 'package:doxa_mobile_app/presentation/routes2.dart';
import 'package:flutter/material.dart';

class NavigatorPage {
  final Routes2 routes;
  final IconData navIcon;
  final String navLabel;
  final GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();
  NavigatorPage({required this.routes, required this.navIcon, required this.navLabel});
}
