// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i20;

import '../presentation/screens/company_profile_sceen/company_profile_screen.dart'
    as _i11;
import '../presentation/screens/counter_screen/counter_screen.dart' as _i16;
import '../presentation/screens/home_screen/home_screen.dart' as _i15;
import '../presentation/screens/jobs_screen/jobs_screen.dart' as _i17;
import '../presentation/screens/messages_screen/chat_screen.dart' as _i5;
import '../presentation/screens/messages_screen/messages_screen.dart' as _i19;
import '../presentation/screens/navigator_screen/navigator_screen.dart' as _i12;
import '../presentation/screens/playground/custom_widgets_screen.dart' as _i4;
import '../presentation/screens/playground/playground_screen.dart' as _i1;
import '../presentation/screens/playground/playground_view/app_navigator.dart'
    as _i9;
import '../presentation/screens/playground/playground_view/auth_navigator.dart'
    as _i8;
import '../presentation/screens/playground/playground_view/loading_screen.dart'
    as _i10;
import '../presentation/screens/playground/playground_view/login_screen/login_screen.dart'
    as _i6;
import '../presentation/screens/playground/playground_view/signup_screen/signup_screen.dart'
    as _i7;
import '../presentation/screens/playground/pulsing_button_screen.dart' as _i3;
import '../presentation/screens/playground/theme_test_screen.dart' as _i2;
import '../presentation/screens/profile_screen/profile_screen.dart' as _i14;
import '../presentation/screens/single_job_screen/single_job_screen.dart'
    as _i18;

class AppRouter extends _i13.RootStackRouter {
  AppRouter([_i20.GlobalKey<_i20.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    PlaygroundRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.PlaygroundScreen());
    },
    ThemeTestRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.ThemeTestScreen());
    },
    PulsingButtonRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.PulsingButtonScreen());
    },
    CustomWidgetsRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.CustomWidgetsScreen());
    },
    ChatRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ChatScreen());
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: _i6.LoginScreen(key: args.key));
    },
    SignupRoute.name: (routeData) {
      final args = routeData.argsAs<SignupRouteArgs>(
          orElse: () => const SignupRouteArgs());
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: _i7.SignupScreen(key: args.key));
    },
    AuthNavigatorRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.AuthNavigatorScreen());
    },
    AppNavigatorRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.AppNavigatorScreen());
    },
    LoadingRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.LoadingScreen());
    },
    CompanyProfileRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.CompanyProfileScreen());
    },
    NavigatorRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.NavigatorScreen());
    },
    HomeRouter.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.EmptyRouterPage());
    },
    JobsRouter.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.EmptyRouterPage());
    },
    MessagesRouter.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.EmptyRouterPage());
    },
    ProfileRouter.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.ProfileScreen());
    },
    HomeRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.HomeScreen());
    },
    CounterRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i16.CounterScreen());
    },
    JobsRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i17.JobsScreen());
    },
    SingleJobRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i18.SingleJobScreen());
    },
    MessagesRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i19.MessagesScreen());
    }
  };

  @override
  List<_i13.RouteConfig> get routes => [
        _i13.RouteConfig(PlaygroundRoute.name, path: '/'),
        _i13.RouteConfig(ThemeTestRoute.name, path: 'theme-test-screen'),
        _i13.RouteConfig(PulsingButtonRoute.name,
            path: 'pulsing-button-screen'),
        _i13.RouteConfig(CustomWidgetsRoute.name,
            path: 'custom-widgets-screen'),
        _i13.RouteConfig(ChatRoute.name, path: 'chat-screen'),
        _i13.RouteConfig(LoginRoute.name, path: 'login-screen'),
        _i13.RouteConfig(SignupRoute.name, path: 'signup-screen'),
        _i13.RouteConfig(AuthNavigatorRoute.name, path: 'auth-screen'),
        _i13.RouteConfig(AppNavigatorRoute.name, path: 'app-nav-screen'),
        _i13.RouteConfig(LoadingRoute.name, path: 'loading-screen'),
        _i13.RouteConfig(CompanyProfileRoute.name,
            path: 'company-profile-screen'),
        _i13.RouteConfig(NavigatorRoute.name,
            path: 'navigator-screen',
            children: [
              _i13.RouteConfig(HomeRouter.name,
                  path: 'home-screen',
                  parent: NavigatorRoute.name,
                  children: [
                    _i13.RouteConfig(HomeRoute.name,
                        path: '', parent: HomeRouter.name),
                    _i13.RouteConfig(CounterRoute.name,
                        path: 'counter-screen', parent: HomeRouter.name)
                  ]),
              _i13.RouteConfig(JobsRouter.name,
                  path: 'jobs-screen',
                  parent: NavigatorRoute.name,
                  children: [
                    _i13.RouteConfig(JobsRoute.name,
                        path: '', parent: JobsRouter.name),
                    _i13.RouteConfig(SingleJobRoute.name,
                        path: 'single-job-screen', parent: JobsRouter.name)
                  ]),
              _i13.RouteConfig(MessagesRouter.name,
                  path: 'messages-screen',
                  parent: NavigatorRoute.name,
                  children: [
                    _i13.RouteConfig(MessagesRoute.name,
                        path: '', parent: MessagesRouter.name)
                  ]),
              _i13.RouteConfig(ProfileRouter.name,
                  path: 'profile-screen', parent: NavigatorRoute.name)
            ])
      ];
}

/// generated route for
/// [_i1.PlaygroundScreen]
class PlaygroundRoute extends _i13.PageRouteInfo<void> {
  const PlaygroundRoute() : super(PlaygroundRoute.name, path: '/');

  static const String name = 'PlaygroundRoute';
}

/// generated route for
/// [_i2.ThemeTestScreen]
class ThemeTestRoute extends _i13.PageRouteInfo<void> {
  const ThemeTestRoute()
      : super(ThemeTestRoute.name, path: 'theme-test-screen');

  static const String name = 'ThemeTestRoute';
}

/// generated route for
/// [_i3.PulsingButtonScreen]
class PulsingButtonRoute extends _i13.PageRouteInfo<void> {
  const PulsingButtonRoute()
      : super(PulsingButtonRoute.name, path: 'pulsing-button-screen');

  static const String name = 'PulsingButtonRoute';
}

/// generated route for
/// [_i4.CustomWidgetsScreen]
class CustomWidgetsRoute extends _i13.PageRouteInfo<void> {
  const CustomWidgetsRoute()
      : super(CustomWidgetsRoute.name, path: 'custom-widgets-screen');

  static const String name = 'CustomWidgetsRoute';
}

/// generated route for
/// [_i5.ChatScreen]
class ChatRoute extends _i13.PageRouteInfo<void> {
  const ChatRoute() : super(ChatRoute.name, path: 'chat-screen');

  static const String name = 'ChatRoute';
}

/// generated route for
/// [_i6.LoginScreen]
class LoginRoute extends _i13.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i20.Key? key})
      : super(LoginRoute.name,
            path: 'login-screen', args: LoginRouteArgs(key: key));

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i20.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.SignupScreen]
class SignupRoute extends _i13.PageRouteInfo<SignupRouteArgs> {
  SignupRoute({_i20.Key? key})
      : super(SignupRoute.name,
            path: 'signup-screen', args: SignupRouteArgs(key: key));

  static const String name = 'SignupRoute';
}

class SignupRouteArgs {
  const SignupRouteArgs({this.key});

  final _i20.Key? key;

  @override
  String toString() {
    return 'SignupRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.AuthNavigatorScreen]
class AuthNavigatorRoute extends _i13.PageRouteInfo<void> {
  const AuthNavigatorRoute()
      : super(AuthNavigatorRoute.name, path: 'auth-screen');

  static const String name = 'AuthNavigatorRoute';
}

/// generated route for
/// [_i9.AppNavigatorScreen]
class AppNavigatorRoute extends _i13.PageRouteInfo<void> {
  const AppNavigatorRoute()
      : super(AppNavigatorRoute.name, path: 'app-nav-screen');

  static const String name = 'AppNavigatorRoute';
}

/// generated route for
/// [_i10.LoadingScreen]
class LoadingRoute extends _i13.PageRouteInfo<void> {
  const LoadingRoute() : super(LoadingRoute.name, path: 'loading-screen');

  static const String name = 'LoadingRoute';
}

/// generated route for
/// [_i11.CompanyProfileScreen]
class CompanyProfileRoute extends _i13.PageRouteInfo<void> {
  const CompanyProfileRoute()
      : super(CompanyProfileRoute.name, path: 'company-profile-screen');

  static const String name = 'CompanyProfileRoute';
}

/// generated route for
/// [_i12.NavigatorScreen]
class NavigatorRoute extends _i13.PageRouteInfo<void> {
  const NavigatorRoute({List<_i13.PageRouteInfo>? children})
      : super(NavigatorRoute.name,
            path: 'navigator-screen', initialChildren: children);

  static const String name = 'NavigatorRoute';
}

/// generated route for
/// [_i13.EmptyRouterPage]
class HomeRouter extends _i13.PageRouteInfo<void> {
  const HomeRouter({List<_i13.PageRouteInfo>? children})
      : super(HomeRouter.name, path: 'home-screen', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i13.EmptyRouterPage]
class JobsRouter extends _i13.PageRouteInfo<void> {
  const JobsRouter({List<_i13.PageRouteInfo>? children})
      : super(JobsRouter.name, path: 'jobs-screen', initialChildren: children);

  static const String name = 'JobsRouter';
}

/// generated route for
/// [_i13.EmptyRouterPage]
class MessagesRouter extends _i13.PageRouteInfo<void> {
  const MessagesRouter({List<_i13.PageRouteInfo>? children})
      : super(MessagesRouter.name,
            path: 'messages-screen', initialChildren: children);

  static const String name = 'MessagesRouter';
}

/// generated route for
/// [_i14.ProfileScreen]
class ProfileRouter extends _i13.PageRouteInfo<void> {
  const ProfileRouter() : super(ProfileRouter.name, path: 'profile-screen');

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i15.HomeScreen]
class HomeRoute extends _i13.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i16.CounterScreen]
class CounterRoute extends _i13.PageRouteInfo<void> {
  const CounterRoute() : super(CounterRoute.name, path: 'counter-screen');

  static const String name = 'CounterRoute';
}

/// generated route for
/// [_i17.JobsScreen]
class JobsRoute extends _i13.PageRouteInfo<void> {
  const JobsRoute() : super(JobsRoute.name, path: '');

  static const String name = 'JobsRoute';
}

/// generated route for
/// [_i18.SingleJobScreen]
class SingleJobRoute extends _i13.PageRouteInfo<void> {
  const SingleJobRoute()
      : super(SingleJobRoute.name, path: 'single-job-screen');

  static const String name = 'SingleJobRoute';
}

/// generated route for
/// [_i19.MessagesScreen]
class MessagesRoute extends _i13.PageRouteInfo<void> {
  const MessagesRoute() : super(MessagesRoute.name, path: '');

  static const String name = 'MessagesRoute';
}
