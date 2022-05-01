// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i16;

import '../presentation/screens/company_profile_sceen/company_profile_screen.dart'
    as _i15;
import '../presentation/screens/counter_screen/counter_screen.dart' as _i10;
import '../presentation/screens/home_screen/home_screen.dart' as _i9;
import '../presentation/screens/jobs_screen/jobs_screen.dart' as _i11;
import '../presentation/screens/messages_screen/chat_screen.dart' as _i5;
import '../presentation/screens/messages_screen/messages_screen.dart' as _i13;
import '../presentation/screens/navigator_screen/navigator_screen.dart' as _i7;
import '../presentation/screens/playground/custom_widgets_screen.dart' as _i4;
import '../presentation/screens/playground/playground_screen.dart' as _i1;
import '../presentation/screens/playground/playground_view/manage_1x_2x_3x_images.dart'
    as _i6;
import '../presentation/screens/playground/pulsing_button_screen.dart' as _i3;
import '../presentation/screens/playground/theme_test_screen.dart' as _i2;
import '../presentation/screens/profile_screen/profile_screen.dart' as _i14;
import '../presentation/screens/single_job_screen/single_job_screen.dart'
    as _i12;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i16.GlobalKey<_i16.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    PlaygroundRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.PlaygroundScreen());
    },
    ThemeTestRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.ThemeTestScreen());
    },
    PulsingButtonRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.PulsingButtonScreen());
    },
    CustomWidgetsRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.CustomWidgetsScreen());
    },
    ChatRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ChatScreen());
    },
    ManageImagesRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ManageImagesScreen());
    },
    NavigatorRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.NavigatorScreen());
    },
    HomeRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.EmptyRouterPage());
    },
    JobsRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.EmptyRouterPage());
    },
    MessagesRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.EmptyRouterPage());
    },
    ProfileRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.EmptyRouterPage());
    },
    HomeRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.HomeScreen());
    },
    CounterRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.CounterScreen());
    },
    JobsRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.JobsScreen());
    },
    SingleJobRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.SingleJobScreen());
    },
    MessagesRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.MessagesScreen());
    },
    ProfileRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.ProfileScreen());
    },
    CompanyProfileRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.CompanyProfileScreen());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(PlaygroundRoute.name, path: '/'),
        _i8.RouteConfig(ThemeTestRoute.name, path: 'theme-test-screen'),
        _i8.RouteConfig(PulsingButtonRoute.name, path: 'pulsing-button-screen'),
        _i8.RouteConfig(CustomWidgetsRoute.name, path: 'custom-widgets-screen'),
        _i8.RouteConfig(ChatRoute.name, path: 'chat-screen'),
        _i8.RouteConfig(ChatRoute.name, path: 'chat-screen'),
        _i8.RouteConfig(ManageImagesRoute.name, path: 'manage-images-screen'),
        _i8.RouteConfig(NavigatorRoute.name,
            path: 'navigator-screen',
            children: [
              _i8.RouteConfig(HomeRouter.name,
                  path: 'home-screen',
                  parent: NavigatorRoute.name,
                  children: [
                    _i8.RouteConfig(HomeRoute.name,
                        path: '', parent: HomeRouter.name),
                    _i8.RouteConfig(CounterRoute.name,
                        path: 'counter-screen', parent: HomeRouter.name)
                  ]),
              _i8.RouteConfig(JobsRouter.name,
                  path: 'jobs-screen',
                  parent: NavigatorRoute.name,
                  children: [
                    _i8.RouteConfig(JobsRoute.name,
                        path: '', parent: JobsRouter.name),
                    _i8.RouteConfig(SingleJobRoute.name,
                        path: 'single-job-screen', parent: JobsRouter.name)
                  ]),
              _i8.RouteConfig(MessagesRouter.name,
                  path: 'messages-screen',
                  parent: NavigatorRoute.name,
                  children: [
                    _i8.RouteConfig(MessagesRoute.name,
                        path: '', parent: MessagesRouter.name)
                  ]),
              _i8.RouteConfig(ProfileRouter.name,
                  path: 'profile-screen',
                  parent: NavigatorRoute.name,
                  children: [
                    _i8.RouteConfig(ProfileRoute.name,
                        path: '', parent: ProfileRouter.name),
                    _i8.RouteConfig(CompanyProfileRoute.name,
                        path: 'company-profile-screen',
                        parent: ProfileRouter.name)
                  ])
            ])
      ];
}

/// generated route for
/// [_i1.PlaygroundScreen]
class PlaygroundRoute extends _i8.PageRouteInfo<void> {
  const PlaygroundRoute() : super(PlaygroundRoute.name, path: '/');

  static const String name = 'PlaygroundRoute';
}

/// generated route for
/// [_i2.ThemeTestScreen]
class ThemeTestRoute extends _i8.PageRouteInfo<void> {
  const ThemeTestRoute()
      : super(ThemeTestRoute.name, path: 'theme-test-screen');

  static const String name = 'ThemeTestRoute';
}

/// generated route for
/// [_i3.PulsingButtonScreen]
class PulsingButtonRoute extends _i8.PageRouteInfo<void> {
  const PulsingButtonRoute()
      : super(PulsingButtonRoute.name, path: 'pulsing-button-screen');

  static const String name = 'PulsingButtonRoute';
}

/// generated route for
/// [_i4.CustomWidgetsScreen]
class CustomWidgetsRoute extends _i8.PageRouteInfo<void> {
  const CustomWidgetsRoute()
      : super(CustomWidgetsRoute.name, path: 'custom-widgets-screen');

  static const String name = 'CustomWidgetsRoute';
}

/// generated route for
/// [_i5.ChatScreen]
class ChatRoute extends _i8.PageRouteInfo<void> {
  const ChatRoute() : super(ChatRoute.name, path: 'chat-screen');

  static const String name = 'ChatRoute';
}

/// generated route for
/// [_i6.ManageImagesScreen]
class ManageImagesRoute extends _i8.PageRouteInfo<void> {
  const ManageImagesRoute()
      : super(ManageImagesRoute.name, path: 'manage-images-screen');

  static const String name = 'ManageImagesRoute';
}

/// generated route for
/// [_i7.NavigatorScreen]
class NavigatorRoute extends _i8.PageRouteInfo<void> {
  const NavigatorRoute({List<_i8.PageRouteInfo>? children})
      : super(NavigatorRoute.name,
            path: 'navigator-screen', initialChildren: children);

  static const String name = 'NavigatorRoute';
}

/// generated route for
/// [_i8.EmptyRouterPage]
class HomeRouter extends _i8.PageRouteInfo<void> {
  const HomeRouter({List<_i8.PageRouteInfo>? children})
      : super(HomeRouter.name, path: 'home-screen', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i8.EmptyRouterPage]
class JobsRouter extends _i8.PageRouteInfo<void> {
  const JobsRouter({List<_i8.PageRouteInfo>? children})
      : super(JobsRouter.name, path: 'jobs-screen', initialChildren: children);

  static const String name = 'JobsRouter';
}

/// generated route for
/// [_i8.EmptyRouterPage]
class MessagesRouter extends _i8.PageRouteInfo<void> {
  const MessagesRouter({List<_i8.PageRouteInfo>? children})
      : super(MessagesRouter.name,
            path: 'messages-screen', initialChildren: children);

  static const String name = 'MessagesRouter';
}

/// generated route for
/// [_i8.EmptyRouterPage]
class ProfileRouter extends _i8.PageRouteInfo<void> {
  const ProfileRouter({List<_i8.PageRouteInfo>? children})
      : super(ProfileRouter.name,
            path: 'profile-screen', initialChildren: children);

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i9.HomeScreen]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i10.CounterScreen]
class CounterRoute extends _i8.PageRouteInfo<void> {
  const CounterRoute() : super(CounterRoute.name, path: 'counter-screen');

  static const String name = 'CounterRoute';
}

/// generated route for
/// [_i11.JobsScreen]
class JobsRoute extends _i8.PageRouteInfo<void> {
  const JobsRoute() : super(JobsRoute.name, path: '');

  static const String name = 'JobsRoute';
}

/// generated route for
/// [_i12.SingleJobScreen]
class SingleJobRoute extends _i8.PageRouteInfo<void> {
  const SingleJobRoute()
      : super(SingleJobRoute.name, path: 'single-job-screen');

  static const String name = 'SingleJobRoute';
}

/// generated route for
/// [_i13.MessagesScreen]
class MessagesRoute extends _i8.PageRouteInfo<void> {
  const MessagesRoute() : super(MessagesRoute.name, path: '');

  static const String name = 'MessagesRoute';
}

/// generated route for
/// [_i14.ProfileScreen]
class ProfileRoute extends _i8.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i15.CompanyProfileScreen]
class CompanyProfileRoute extends _i8.PageRouteInfo<void> {
  const CompanyProfileRoute()
      : super(CompanyProfileRoute.name, path: 'company-profile-screen');

  static const String name = 'CompanyProfileRoute';
}
