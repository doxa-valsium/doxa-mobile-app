// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i10;

import '../presentation/screens/counter_screen/counter_screen.dart' as _i7;
import '../presentation/screens/home_screen/home_screen.dart' as _i6;
import '../presentation/screens/jobs_screen/jobs_screen.dart' as _i8;
import '../presentation/screens/login_screen/login_screen.dart' as _i9;
import '../presentation/screens/messages_screen/messages_screen.dart' as _i4;
import '../presentation/screens/navigator_screen/navigator_screen.dart' as _i1;
import '../presentation/screens/profile_screen/profile_screen.dart' as _i5;
import '../presentation/screens/signup_screen/signup_screen.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    NavigatorRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.NavigatorScreen());
    },
    SignupRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignupScreen());
    },
    HomeRouter.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.EmptyRouterPage());
    },
    JobsRouter.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.EmptyRouterPage());
    },
    MessagesRouter.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.MessagesScreen());
    },
    ProfileRouter.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ProfileScreen());
    },
    HomeRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.HomeScreen());
    },
    CounterRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.CounterScreen());
    },
    JobsRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.JobsScreen());
    },
    LoginRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.LoginScreen());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(NavigatorRoute.name, path: '/', children: [
          _i3.RouteConfig(HomeRouter.name,
              path: 'home-screen',
              parent: NavigatorRoute.name,
              children: [
                _i3.RouteConfig(HomeRoute.name,
                    path: '', parent: HomeRouter.name),
                _i3.RouteConfig(CounterRoute.name,
                    path: 'counter-screen', parent: HomeRouter.name)
              ]),
          _i3.RouteConfig(JobsRouter.name,
              path: 'jobs-screen',
              parent: NavigatorRoute.name,
              children: [
                _i3.RouteConfig(JobsRoute.name,
                    path: '', parent: JobsRouter.name),
                _i3.RouteConfig(LoginRoute.name,
                    path: 'login-screen', parent: JobsRouter.name)
              ]),
          _i3.RouteConfig(MessagesRouter.name,
              path: 'messages-screen', parent: NavigatorRoute.name),
          _i3.RouteConfig(ProfileRouter.name,
              path: 'profile-screen', parent: NavigatorRoute.name)
        ]),
        _i3.RouteConfig(SignupRoute.name, path: 'signup-screen')
      ];
}

/// generated route for
/// [_i1.NavigatorScreen]
class NavigatorRoute extends _i3.PageRouteInfo<void> {
  const NavigatorRoute({List<_i3.PageRouteInfo>? children})
      : super(NavigatorRoute.name, path: '/', initialChildren: children);

  static const String name = 'NavigatorRoute';
}

/// generated route for
/// [_i2.SignupScreen]
class SignupRoute extends _i3.PageRouteInfo<void> {
  const SignupRoute() : super(SignupRoute.name, path: 'signup-screen');

  static const String name = 'SignupRoute';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class HomeRouter extends _i3.PageRouteInfo<void> {
  const HomeRouter({List<_i3.PageRouteInfo>? children})
      : super(HomeRouter.name, path: 'home-screen', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class JobsRouter extends _i3.PageRouteInfo<void> {
  const JobsRouter({List<_i3.PageRouteInfo>? children})
      : super(JobsRouter.name, path: 'jobs-screen', initialChildren: children);

  static const String name = 'JobsRouter';
}

/// generated route for
/// [_i4.MessagesScreen]
class MessagesRouter extends _i3.PageRouteInfo<void> {
  const MessagesRouter() : super(MessagesRouter.name, path: 'messages-screen');

  static const String name = 'MessagesRouter';
}

/// generated route for
/// [_i5.ProfileScreen]
class ProfileRouter extends _i3.PageRouteInfo<void> {
  const ProfileRouter() : super(ProfileRouter.name, path: 'profile-screen');

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i6.HomeScreen]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i7.CounterScreen]
class CounterRoute extends _i3.PageRouteInfo<void> {
  const CounterRoute() : super(CounterRoute.name, path: 'counter-screen');

  static const String name = 'CounterRoute';
}

/// generated route for
/// [_i8.JobsScreen]
class JobsRoute extends _i3.PageRouteInfo<void> {
  const JobsRoute() : super(JobsRoute.name, path: '');

  static const String name = 'JobsRoute';
}

/// generated route for
/// [_i9.LoginScreen]
class LoginRoute extends _i3.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: 'login-screen');

  static const String name = 'LoginRoute';
}
