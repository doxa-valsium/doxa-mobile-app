// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i18;

import '../presentation/screens/company_profile_sceen/company_profile_screen.dart'
    as _i17;
import '../presentation/screens/counter_screen/counter_screen.dart' as _i12;
import '../presentation/screens/home_screen/home_screen.dart' as _i11;
import '../presentation/screens/jobs_screen/jobs_screen.dart' as _i13;
import '../presentation/screens/messages_screen/chat_screen.dart' as _i5;
import '../presentation/screens/messages_screen/messages_screen.dart' as _i15;
import '../presentation/screens/navigator_screen/navigator_screen.dart' as _i9;
import '../presentation/screens/playground/custom_widgets_screen.dart' as _i4;
import '../presentation/screens/playground/manage_1x_2x_3x_images.dart' as _i6;
import '../presentation/screens/playground/playground_screen.dart' as _i1;
import '../presentation/screens/playground/pulsing_button_screen.dart' as _i3;
import '../presentation/screens/playground/theme_test_screen.dart' as _i2;
import '../presentation/screens/profile_screen/profile_screen.dart' as _i16;
import '../presentation/screens/sign_in_up_screen/login_screen.dart' as _i7;
import '../presentation/screens/sign_in_up_screen/registration_screen.dart'
    as _i8;
import '../presentation/screens/single_job_screen/single_job_screen.dart'
    as _i14;

class AppRouter extends _i10.RootStackRouter {
  AppRouter([_i18.GlobalKey<_i18.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    PlaygroundRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.PlaygroundScreen());
    },
    ThemeTestRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.ThemeTestScreen());
    },
    PulsingButtonRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.PulsingButtonScreen());
    },
    CustomWidgetsRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.CustomWidgetsScreen());
    },
    ChatRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ChatScreen());
    },
    ManageImagesRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ManageImagesScreen());
    },
    LoginRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.LoginScreen());
    },
    RegistrationRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.RegistrationScreen());
    },
    NavigatorRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.NavigatorScreen());
    },
    HomeRouter.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.EmptyRouterPage());
    },
    JobsRouter.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.EmptyRouterPage());
    },
    MessagesRouter.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.EmptyRouterPage());
    },
    ProfileRouter.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.EmptyRouterPage());
    },
    HomeRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.HomeScreen());
    },
    CounterRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.CounterScreen());
    },
    JobsRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.JobsScreen());
    },
    SingleJobRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.SingleJobScreen());
    },
    MessagesRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.MessagesScreen());
    },
    ProfileRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i16.ProfileScreen());
    },
    CompanyProfileRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i17.CompanyProfileScreen());
    }
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(PlaygroundRoute.name, path: '/'),
        _i10.RouteConfig(ThemeTestRoute.name, path: 'theme-test-screen'),
        _i10.RouteConfig(PulsingButtonRoute.name,
            path: 'pulsing-button-screen'),
        _i10.RouteConfig(CustomWidgetsRoute.name,
            path: 'custom-widgets-screen'),
        _i10.RouteConfig(ChatRoute.name, path: 'chat-screen'),
        _i10.RouteConfig(ChatRoute.name, path: 'chat-screen'),
        _i10.RouteConfig(ManageImagesRoute.name, path: 'manage-images-screen'),
        _i10.RouteConfig(LoginRoute.name, path: 'LoginRoute'),
        _i10.RouteConfig(RegistrationRoute.name, path: 'registration-screen'),
        _i10.RouteConfig(NavigatorRoute.name,
            path: 'navigator-screen',
            children: [
              _i10.RouteConfig(HomeRouter.name,
                  path: 'home-screen',
                  parent: NavigatorRoute.name,
                  children: [
                    _i10.RouteConfig(HomeRoute.name,
                        path: '', parent: HomeRouter.name),
                    _i10.RouteConfig(CounterRoute.name,
                        path: 'counter-screen', parent: HomeRouter.name)
                  ]),
              _i10.RouteConfig(JobsRouter.name,
                  path: 'jobs-screen',
                  parent: NavigatorRoute.name,
                  children: [
                    _i10.RouteConfig(JobsRoute.name,
                        path: '', parent: JobsRouter.name),
                    _i10.RouteConfig(SingleJobRoute.name,
                        path: 'single-job-screen', parent: JobsRouter.name)
                  ]),
              _i10.RouteConfig(MessagesRouter.name,
                  path: 'messages-screen',
                  parent: NavigatorRoute.name,
                  children: [
                    _i10.RouteConfig(MessagesRoute.name,
                        path: '', parent: MessagesRouter.name)
                  ]),
              _i10.RouteConfig(ProfileRouter.name,
                  path: 'profile-screen',
                  parent: NavigatorRoute.name,
                  children: [
                    _i10.RouteConfig(ProfileRoute.name,
                        path: '', parent: ProfileRouter.name),
                    _i10.RouteConfig(CompanyProfileRoute.name,
                        path: 'company-profile-screen',
                        parent: ProfileRouter.name)
                  ])
            ])
      ];
}

/// generated route for
/// [_i1.PlaygroundScreen]
class PlaygroundRoute extends _i10.PageRouteInfo<void> {
  const PlaygroundRoute() : super(PlaygroundRoute.name, path: '/');

  static const String name = 'PlaygroundRoute';
}

/// generated route for
/// [_i2.ThemeTestScreen]
class ThemeTestRoute extends _i10.PageRouteInfo<void> {
  const ThemeTestRoute()
      : super(ThemeTestRoute.name, path: 'theme-test-screen');

  static const String name = 'ThemeTestRoute';
}

/// generated route for
/// [_i3.PulsingButtonScreen]
class PulsingButtonRoute extends _i10.PageRouteInfo<void> {
  const PulsingButtonRoute()
      : super(PulsingButtonRoute.name, path: 'pulsing-button-screen');

  static const String name = 'PulsingButtonRoute';
}

/// generated route for
/// [_i4.CustomWidgetsScreen]
class CustomWidgetsRoute extends _i10.PageRouteInfo<void> {
  const CustomWidgetsRoute()
      : super(CustomWidgetsRoute.name, path: 'custom-widgets-screen');

  static const String name = 'CustomWidgetsRoute';
}

/// generated route for
/// [_i5.ChatScreen]
class ChatRoute extends _i10.PageRouteInfo<void> {
  const ChatRoute() : super(ChatRoute.name, path: 'chat-screen');

  static const String name = 'ChatRoute';
}

/// generated route for
/// [_i6.ManageImagesScreen]
class ManageImagesRoute extends _i10.PageRouteInfo<void> {
  const ManageImagesRoute()
      : super(ManageImagesRoute.name, path: 'manage-images-screen');

  static const String name = 'ManageImagesRoute';
}

/// generated route for
/// [_i7.LoginScreen]
class LoginRoute extends _i10.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: 'LoginRoute');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i8.RegistrationScreen]
class RegistrationRoute extends _i10.PageRouteInfo<void> {
  const RegistrationRoute()
      : super(RegistrationRoute.name, path: 'registration-screen');

  static const String name = 'RegistrationRoute';
}

/// generated route for
/// [_i9.NavigatorScreen]
class NavigatorRoute extends _i10.PageRouteInfo<void> {
  const NavigatorRoute({List<_i10.PageRouteInfo>? children})
      : super(NavigatorRoute.name,
            path: 'navigator-screen', initialChildren: children);

  static const String name = 'NavigatorRoute';
}

/// generated route for
/// [_i10.EmptyRouterPage]
class HomeRouter extends _i10.PageRouteInfo<void> {
  const HomeRouter({List<_i10.PageRouteInfo>? children})
      : super(HomeRouter.name, path: 'home-screen', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i10.EmptyRouterPage]
class JobsRouter extends _i10.PageRouteInfo<void> {
  const JobsRouter({List<_i10.PageRouteInfo>? children})
      : super(JobsRouter.name, path: 'jobs-screen', initialChildren: children);

  static const String name = 'JobsRouter';
}

/// generated route for
/// [_i10.EmptyRouterPage]
class MessagesRouter extends _i10.PageRouteInfo<void> {
  const MessagesRouter({List<_i10.PageRouteInfo>? children})
      : super(MessagesRouter.name,
            path: 'messages-screen', initialChildren: children);

  static const String name = 'MessagesRouter';
}

/// generated route for
/// [_i10.EmptyRouterPage]
class ProfileRouter extends _i10.PageRouteInfo<void> {
  const ProfileRouter({List<_i10.PageRouteInfo>? children})
      : super(ProfileRouter.name,
            path: 'profile-screen', initialChildren: children);

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i11.HomeScreen]
class HomeRoute extends _i10.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i12.CounterScreen]
class CounterRoute extends _i10.PageRouteInfo<void> {
  const CounterRoute() : super(CounterRoute.name, path: 'counter-screen');

  static const String name = 'CounterRoute';
}

/// generated route for
/// [_i13.JobsScreen]
class JobsRoute extends _i10.PageRouteInfo<void> {
  const JobsRoute() : super(JobsRoute.name, path: '');

  static const String name = 'JobsRoute';
}

/// generated route for
/// [_i14.SingleJobScreen]
class SingleJobRoute extends _i10.PageRouteInfo<void> {
  const SingleJobRoute()
      : super(SingleJobRoute.name, path: 'single-job-screen');

  static const String name = 'SingleJobRoute';
}

/// generated route for
/// [_i15.MessagesScreen]
class MessagesRoute extends _i10.PageRouteInfo<void> {
  const MessagesRoute() : super(MessagesRoute.name, path: '');

  static const String name = 'MessagesRoute';
}

/// generated route for
/// [_i16.ProfileScreen]
class ProfileRoute extends _i10.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i17.CompanyProfileScreen]
class CompanyProfileRoute extends _i10.PageRouteInfo<void> {
  const CompanyProfileRoute()
      : super(CompanyProfileRoute.name, path: 'company-profile-screen');

  static const String name = 'CompanyProfileRoute';
}
