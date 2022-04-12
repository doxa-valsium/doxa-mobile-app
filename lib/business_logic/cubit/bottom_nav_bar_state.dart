part of 'bottom_nav_bar_cubit.dart';

class BottomNavBarState {
  int currentTab; // intial state = 0
  List<NavigatorPage>? navigatorPages = [
    NavigatorPage(routes: HomeRoute(), navLabel: 'Home', navIcon: Icons.home),
    NavigatorPage(routes: JobsRoute(), navLabel: 'Jobs', navIcon: Icons.shopping_bag),
    NavigatorPage(routes: MessagesRoute(), navLabel: 'Messages', navIcon: Icons.message_outlined),
    NavigatorPage(routes: ProfileRoute(), navLabel: 'Profile', navIcon: Icons.person_outline),
  ];
  BottomNavBarState({
    required this.currentTab,
  });
}
