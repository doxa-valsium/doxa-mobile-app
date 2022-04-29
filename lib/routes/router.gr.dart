// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i19;

import '../presentation/screens/counter_screen/counter_screen.dart' as _i15;
import '../presentation/screens/home_screen/home_screen.dart' as _i14;
import '../presentation/screens/jobs_screen/jobs_screen.dart' as _i16;
import '../presentation/screens/messages_screen/chat_screen.dart' as _i5;
import '../presentation/screens/messages_screen/messages_screen.dart' as _i18;
import '../presentation/screens/navigator_screen/navigator_screen.dart' as _i11;
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
import '../presentation/screens/profile_screen/profile_screen.dart' as _i13;
import '../presentation/screens/single_job_screen/single_job_screen.dart'
    as _i17;

class AppRouter extends _i12.RootStackRouter {
  AppRouter([_i19.GlobalKey<_i19.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    PlaygroundRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.PlaygroundScreen());
    },
    ThemeTestRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.ThemeTestScreen());
    },
    PulsingButtonRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.PulsingButtonScreen());
    },
    CustomWidgetsRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.CustomWidgetsScreen());
    },
    ChatRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ChatScreen());
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: _i6.LoginScreen(key: args.key));
    },
    SignupRoute.name: (routeData) {
      final args = routeData.argsAs<SignupRouteArgs>(
          orElse: () => const SignupRouteArgs());
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: _i7.SignupScreen(key: args.key));
    },
    AuthNavigatorRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.AuthNavigatorScreen());
    },
    AppNavigatorRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: _i9.AppNavigatorScreen());
    },
    LoadingRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.LoadingScreen());
    },
    NavigatorRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.NavigatorScreen());
    },
    HomeRouter.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.EmptyRouterPage());
    },
    JobsRouter.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.EmptyRouterPage());
    },
    MessagesRouter.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.EmptyRouterPage());
    },
    ProfileRouter.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.ProfileScreen());
    },
    HomeRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.HomeScreen());
    },
    CounterRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.CounterScreen());
    },
    JobsRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i16.JobsScreen());
    },
    SingleJobRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i17.SingleJobScreen());
    },
    MessagesRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i18.MessagesScreen());
    }
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(PlaygroundRoute.name, path: '/'),
        _i12.RouteConfig(ThemeTestRoute.name, path: 'theme-test-screen'),
        _i12.RouteConfig(PulsingButtonRoute.name,
            path: 'pulsing-button-screen'),
        _i12.RouteConfig(CustomWidgetsRoute.name,
            path: 'custom-widgets-screen'),
        _i12.RouteConfig(ChatRoute.name, path: 'chat-screen'),
        _i12.RouteConfig(LoginRoute.name, path: 'login-screen'),
        _i12.RouteConfig(SignupRoute.name, path: 'signup-screen'),
        _i12.RouteConfig(AuthNavigatorRoute.name, path: 'auth-screen'),
        _i12.RouteConfig(AppNavigatorRoute.name, path: 'app-nav-screen'),
        _i12.RouteConfig(LoadingRoute.name, path: 'loading-screen'),
        _i12.RouteConfig(NavigatorRoute.name,
            path: 'navigator-screen',
            children: [
              _i12.RouteConfig(HomeRouter.name,
                  path: 'home-screen',
                  parent: NavigatorRoute.name,
                  children: [
                    _i12.RouteConfig(HomeRoute.name,
                        path: '', parent: HomeRouter.name),
                    _i12.RouteConfig(CounterRoute.name,
                        path: 'counter-screen', parent: HomeRouter.name)
                  ]),
              _i12.RouteConfig(JobsRouter.name,
                  path: 'jobs-screen',
                  parent: NavigatorRoute.name,
                  children: [
                    _i12.RouteConfig(JobsRoute.name,
                        path: '', parent: JobsRouter.name),
                    _i12.RouteConfig(SingleJobRoute.name,
                        path: 'single-job-screen', parent: JobsRouter.name)
                  ]),
              _i12.RouteConfig(MessagesRouter.name,
                  path: 'messages-screen',
                  parent: NavigatorRoute.name,
                  children: [
                    _i12.RouteConfig(MessagesRoute.name,
                        path: '', parent: MessagesRouter.name)
                  ]),
              _i12.RouteConfig(ProfileRouter.name,
                  path: 'profile-screen', parent: NavigatorRoute.name)
            ])
      ];
}

/// generated route for
/// [_i1.PlaygroundScreen]
class PlaygroundRoute extends _i12.PageRouteInfo<void> {
  const PlaygroundRoute() : super(PlaygroundRoute.name, path: '/');

  static const String name = 'PlaygroundRoute';
}

/// generated route for
/// [_i2.ThemeTestScreen]
class ThemeTestRoute extends _i12.PageRouteInfo<void> {
  const ThemeTestRoute()
      : super(ThemeTestRoute.name, path: 'theme-test-screen');

  static const String name = 'ThemeTestRoute';
}

/// generated route for
/// [_i3.PulsingButtonScreen]
class PulsingButtonRoute extends _i12.PageRouteInfo<void> {
  const PulsingButtonRoute()
      : super(PulsingButtonRoute.name, path: 'pulsing-button-screen');

  static const String name = 'PulsingButtonRoute';
}

/// generated route for
/// [_i4.CustomWidgetsScreen]
class CustomWidgetsRoute extends _i12.PageRouteInfo<void> {
  const CustomWidgetsRoute()
      : super(CustomWidgetsRoute.name, path: 'custom-widgets-screen');

  static const String name = 'CustomWidgetsRoute';
}

/// generated route for
/// [_i5.ChatScreen]
class ChatRoute extends _i12.PageRouteInfo<void> {
  const ChatRoute() : super(ChatRoute.name, path: 'chat-screen');

  static const String name = 'ChatRoute';
}

/// generated route for
/// [_i6.LoginScreen]
class LoginRoute extends _i12.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i19.Key? key})
      : super(LoginRoute.name,
            path: 'login-screen', args: LoginRouteArgs(key: key));

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i19.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.SignupScreen]
class SignupRoute extends _i12.PageRouteInfo<SignupRouteArgs> {
  SignupRoute({_i19.Key? key})
      : super(SignupRoute.name,
            path: 'signup-screen', args: SignupRouteArgs(key: key));

  static const String name = 'SignupRoute';
}

class SignupRouteArgs {
  const SignupRouteArgs({this.key});

  final _i19.Key? key;

  @override
  String toString() {
    return 'SignupRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.AuthNavigatorScreen]
class AuthNavigatorRoute extends _i12.PageRouteInfo<void> {
  const AuthNavigatorRoute()
      : super(AuthNavigatorRoute.name, path: 'auth-screen');

  static const String name = 'AuthNavigatorRoute';
}

/// generated route for
/// [_i9.AppNavigatorScreen]
class AppNavigatorRoute extends _i12.PageRouteInfo<void> {
  const AppNavigatorRoute()
      : super(AppNavigatorRoute.name, path: 'app-nav-screen');

  static const String name = 'AppNavigatorRoute';
}

/// generated route for
/// [_i10.LoadingScreen]
class LoadingRoute extends _i12.PageRouteInfo<void> {
  const LoadingRoute() : super(LoadingRoute.name, path: 'loading-screen');

  static const String name = 'LoadingRoute';
}

/// generated route for
/// [_i11.NavigatorScreen]
class NavigatorRoute extends _i12.PageRouteInfo<void> {
  const NavigatorRoute({List<_i12.PageRouteInfo>? children})
      : super(NavigatorRoute.name,
            path: 'navigator-screen', initialChildren: children);

  static const String name = 'NavigatorRoute';
}

/// generated route for
/// [_i12.EmptyRouterPage]
class HomeRouter extends _i12.PageRouteInfo<void> {
  const HomeRouter({List<_i12.PageRouteInfo>? children})
      : super(HomeRouter.name, path: 'home-screen', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i12.EmptyRouterPage]
class JobsRouter extends _i12.PageRouteInfo<void> {
  const JobsRouter({List<_i12.PageRouteInfo>? children})
      : super(JobsRouter.name, path: 'jobs-screen', initialChildren: children);

  static const String name = 'JobsRouter';
}

/// generated route for
/// [_i12.EmptyRouterPage]
class MessagesRouter extends _i12.PageRouteInfo<void> {
  const MessagesRouter({List<_i12.PageRouteInfo>? children})
      : super(MessagesRouter.name,
            path: 'messages-screen', initialChildren: children);

  static const String name = 'MessagesRouter';
}

/// generated route for
/// [_i13.ProfileScreen]
class ProfileRouter extends _i12.PageRouteInfo<void> {
  const ProfileRouter() : super(ProfileRouter.name, path: 'profile-screen');

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i14.HomeScreen]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i15.CounterScreen]
class CounterRoute extends _i12.PageRouteInfo<void> {
  const CounterRoute() : super(CounterRoute.name, path: 'counter-screen');

  static const String name = 'CounterRoute';
}

/// generated route for
/// [_i16.JobsScreen]
class JobsRoute extends _i12.PageRouteInfo<void> {
  const JobsRoute() : super(JobsRoute.name, path: '');

  static const String name = 'JobsRoute';
}

/// generated route for
/// [_i17.SingleJobScreen]
class SingleJobRoute extends _i12.PageRouteInfo<void> {
  const SingleJobRoute()
      : super(SingleJobRoute.name, path: 'single-job-screen');

  static const String name = 'SingleJobRoute';
}

/// generated route for
/// [_i18.MessagesScreen]
class MessagesRoute extends _i12.PageRouteInfo<void> {
  const MessagesRoute() : super(MessagesRoute.name, path: '');

  static const String name = 'MessagesRoute';
}
