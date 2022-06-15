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
import 'package:flutter/material.dart' as _i22;

import '../presentation/screens/auth_wrapper_screen/auth_wrapper_screen.dart'
    as _i9;
import '../presentation/screens/company_profile_sceen/company_profile_screen.dart'
    as _i19;
import '../presentation/screens/home_screen/home_screen.dart' as _i13;
import '../presentation/screens/job_form/job_form_flow_screen.dart' as _i16;
import '../presentation/screens/jobs_screen/jobs_screen.dart' as _i14;
import '../presentation/screens/login_screen/login_screen.dart' as _i20;
import '../presentation/screens/messages_screen/chat_screen.dart' as _i6;
import '../presentation/screens/messages_screen/messages_screen.dart' as _i17;
import '../presentation/screens/navigator_screen/navigator_screen.dart' as _i11;
import '../presentation/screens/playground/custom_widgets_screen.dart' as _i5;
import '../presentation/screens/playground/flow_view_demo_screen.dart' as _i8;
import '../presentation/screens/playground/manage_1x_2x_3x_images.dart' as _i7;
import '../presentation/screens/playground/playground_screen.dart' as _i2;
import '../presentation/screens/playground/pulsing_button_screen.dart' as _i4;
import '../presentation/screens/playground/theme_test_screen.dart' as _i3;
import '../presentation/screens/profile_screen/profile_screen.dart' as _i18;
import '../presentation/screens/registration_screen/registration_flow_screen.dart'
    as _i21;
import '../presentation/screens/single_job_screen/single_job_screen.dart'
    as _i15;
import '../presentation/screens/splash_screen/spalsh_screen.dart' as _i1;
import '../presentation/screens/unauth_wrapper_screen/unauth_wrapper_screen.dart'
    as _i10;

class AppRouter extends _i12.RootStackRouter {
  AppRouter([_i22.GlobalKey<_i22.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashScreen());
    },
    PlaygroundRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.PlaygroundScreen());
    },
    ThemeTestRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ThemeTestScreen());
    },
    PulsingButtonRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.PulsingButtonScreen());
    },
    CustomWidgetsRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.CustomWidgetsScreen());
    },
    ChatRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ChatScreen());
    },
    ManageImagesRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.ManageImagesScreen());
    },
    FlowViewDemoRoute.name: (routeData) {
      return _i12.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i8.FlowViewDemoScreen(),
          fullscreenDialog: true,
          opaque: true,
          barrierDismissible: false);
    },
    AuthWrapperRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.AuthWrapperScreen());
    },
    UnAuthWrapperRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.UnAuthWrapperScreen());
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
          routeData: routeData, child: const _i12.EmptyRouterPage());
    },
    HomeRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.HomeScreen());
    },
    JobsRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.JobsScreen());
    },
    SingleJobRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.SingleJobScreen());
    },
    JobFormFlowRoute.name: (routeData) {
      final args = routeData.argsAs<JobFormFlowRouteArgs>(
          orElse: () => const JobFormFlowRouteArgs());
      return _i12.CustomPage<dynamic>(
          routeData: routeData,
          child: _i16.JobFormFlowScreen(key: args.key),
          fullscreenDialog: true,
          opaque: true,
          barrierDismissible: false);
    },
    MessagesRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i17.MessagesScreen());
    },
    ProfileRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i18.ProfileScreen());
    },
    CompanyProfileRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i19.CompanyProfileScreen());
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: _i20.LoginScreen(key: args.key));
    },
    RegistrationFlowRoute.name: (routeData) {
      final args = routeData.argsAs<RegistrationFlowRouteArgs>(
          orElse: () => const RegistrationFlowRouteArgs());
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i21.RegistrationFlowScreen(key: args.key));
    }
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(SplashRoute.name, path: 'splash'),
        _i12.RouteConfig(PlaygroundRoute.name, path: 'playground'),
        _i12.RouteConfig(ThemeTestRoute.name, path: 'theme-test'),
        _i12.RouteConfig(PulsingButtonRoute.name,
            path: 'pulsing-button-screen'),
        _i12.RouteConfig(CustomWidgetsRoute.name,
            path: 'custom-widgets-screen'),
        _i12.RouteConfig(ChatRoute.name, path: 'chat-screen'),
        _i12.RouteConfig(ManageImagesRoute.name, path: 'manage-images-screen'),
        _i12.RouteConfig(FlowViewDemoRoute.name, path: 'flow-view-demo-screen'),
        _i12.RouteConfig(AuthWrapperRoute.name, path: '/auth', children: [
          _i12.RouteConfig(NavigatorRoute.name,
              path: '',
              parent: AuthWrapperRoute.name,
              children: [
                _i12.RouteConfig(HomeRouter.name,
                    path: 'home-screen',
                    parent: NavigatorRoute.name,
                    children: [
                      _i12.RouteConfig(HomeRoute.name,
                          path: '', parent: HomeRouter.name)
                    ]),
                _i12.RouteConfig(JobsRouter.name,
                    path: 'jobs-screen',
                    parent: NavigatorRoute.name,
                    children: [
                      _i12.RouteConfig(JobsRoute.name,
                          path: '', parent: JobsRouter.name),
                      _i12.RouteConfig(SingleJobRoute.name,
                          path: 'single-job-screen', parent: JobsRouter.name),
                      _i12.RouteConfig(JobFormFlowRoute.name,
                          path: 'job-form-flow-screen', parent: JobsRouter.name)
                    ]),
                _i12.RouteConfig(MessagesRouter.name,
                    path: 'messages-screen',
                    parent: NavigatorRoute.name,
                    children: [
                      _i12.RouteConfig(MessagesRoute.name,
                          path: '', parent: MessagesRouter.name)
                    ]),
                _i12.RouteConfig(ProfileRouter.name,
                    path: 'profile-screen',
                    parent: NavigatorRoute.name,
                    children: [
                      _i12.RouteConfig(ProfileRoute.name,
                          path: '', parent: ProfileRouter.name),
                      _i12.RouteConfig(CompanyProfileRoute.name,
                          path: 'company-profile-screen',
                          parent: ProfileRouter.name)
                    ])
              ])
        ]),
        _i12.RouteConfig(UnAuthWrapperRoute.name, path: '/unauth', children: [
          _i12.RouteConfig('#redirect',
              path: '',
              parent: UnAuthWrapperRoute.name,
              redirectTo: 'login',
              fullMatch: true),
          _i12.RouteConfig(LoginRoute.name,
              path: 'login', parent: UnAuthWrapperRoute.name),
          _i12.RouteConfig(RegistrationFlowRoute.name,
              path: 'register', parent: UnAuthWrapperRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashRoute extends _i12.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: 'splash');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.PlaygroundScreen]
class PlaygroundRoute extends _i12.PageRouteInfo<void> {
  const PlaygroundRoute() : super(PlaygroundRoute.name, path: 'playground');

  static const String name = 'PlaygroundRoute';
}

/// generated route for
/// [_i3.ThemeTestScreen]
class ThemeTestRoute extends _i12.PageRouteInfo<void> {
  const ThemeTestRoute() : super(ThemeTestRoute.name, path: 'theme-test');

  static const String name = 'ThemeTestRoute';
}

/// generated route for
/// [_i4.PulsingButtonScreen]
class PulsingButtonRoute extends _i12.PageRouteInfo<void> {
  const PulsingButtonRoute()
      : super(PulsingButtonRoute.name, path: 'pulsing-button-screen');

  static const String name = 'PulsingButtonRoute';
}

/// generated route for
/// [_i5.CustomWidgetsScreen]
class CustomWidgetsRoute extends _i12.PageRouteInfo<void> {
  const CustomWidgetsRoute()
      : super(CustomWidgetsRoute.name, path: 'custom-widgets-screen');

  static const String name = 'CustomWidgetsRoute';
}

/// generated route for
/// [_i6.ChatScreen]
class ChatRoute extends _i12.PageRouteInfo<void> {
  const ChatRoute() : super(ChatRoute.name, path: 'chat-screen');

  static const String name = 'ChatRoute';
}

/// generated route for
/// [_i7.ManageImagesScreen]
class ManageImagesRoute extends _i12.PageRouteInfo<void> {
  const ManageImagesRoute()
      : super(ManageImagesRoute.name, path: 'manage-images-screen');

  static const String name = 'ManageImagesRoute';
}

/// generated route for
/// [_i8.FlowViewDemoScreen]
class FlowViewDemoRoute extends _i12.PageRouteInfo<void> {
  const FlowViewDemoRoute()
      : super(FlowViewDemoRoute.name, path: 'flow-view-demo-screen');

  static const String name = 'FlowViewDemoRoute';
}

/// generated route for
/// [_i9.AuthWrapperScreen]
class AuthWrapperRoute extends _i12.PageRouteInfo<void> {
  const AuthWrapperRoute({List<_i12.PageRouteInfo>? children})
      : super(AuthWrapperRoute.name, path: '/auth', initialChildren: children);

  static const String name = 'AuthWrapperRoute';
}

/// generated route for
/// [_i10.UnAuthWrapperScreen]
class UnAuthWrapperRoute extends _i12.PageRouteInfo<void> {
  const UnAuthWrapperRoute({List<_i12.PageRouteInfo>? children})
      : super(UnAuthWrapperRoute.name,
            path: '/unauth', initialChildren: children);

  static const String name = 'UnAuthWrapperRoute';
}

/// generated route for
/// [_i11.NavigatorScreen]
class NavigatorRoute extends _i12.PageRouteInfo<void> {
  const NavigatorRoute({List<_i12.PageRouteInfo>? children})
      : super(NavigatorRoute.name, path: '', initialChildren: children);

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
/// [_i12.EmptyRouterPage]
class ProfileRouter extends _i12.PageRouteInfo<void> {
  const ProfileRouter({List<_i12.PageRouteInfo>? children})
      : super(ProfileRouter.name,
            path: 'profile-screen', initialChildren: children);

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i13.HomeScreen]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i14.JobsScreen]
class JobsRoute extends _i12.PageRouteInfo<void> {
  const JobsRoute() : super(JobsRoute.name, path: '');

  static const String name = 'JobsRoute';
}

/// generated route for
/// [_i15.SingleJobScreen]
class SingleJobRoute extends _i12.PageRouteInfo<void> {
  const SingleJobRoute()
      : super(SingleJobRoute.name, path: 'single-job-screen');

  static const String name = 'SingleJobRoute';
}

/// generated route for
/// [_i16.JobFormFlowScreen]
class JobFormFlowRoute extends _i12.PageRouteInfo<JobFormFlowRouteArgs> {
  JobFormFlowRoute({_i22.Key? key})
      : super(JobFormFlowRoute.name,
            path: 'job-form-flow-screen', args: JobFormFlowRouteArgs(key: key));

  static const String name = 'JobFormFlowRoute';
}

class JobFormFlowRouteArgs {
  const JobFormFlowRouteArgs({this.key});

  final _i22.Key? key;

  @override
  String toString() {
    return 'JobFormFlowRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i17.MessagesScreen]
class MessagesRoute extends _i12.PageRouteInfo<void> {
  const MessagesRoute() : super(MessagesRoute.name, path: '');

  static const String name = 'MessagesRoute';
}

/// generated route for
/// [_i18.ProfileScreen]
class ProfileRoute extends _i12.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i19.CompanyProfileScreen]
class CompanyProfileRoute extends _i12.PageRouteInfo<void> {
  const CompanyProfileRoute()
      : super(CompanyProfileRoute.name, path: 'company-profile-screen');

  static const String name = 'CompanyProfileRoute';
}

/// generated route for
/// [_i20.LoginScreen]
class LoginRoute extends _i12.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i22.Key? key})
      : super(LoginRoute.name, path: 'login', args: LoginRouteArgs(key: key));

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i22.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i21.RegistrationFlowScreen]
class RegistrationFlowRoute
    extends _i12.PageRouteInfo<RegistrationFlowRouteArgs> {
  RegistrationFlowRoute({_i22.Key? key})
      : super(RegistrationFlowRoute.name,
            path: 'register', args: RegistrationFlowRouteArgs(key: key));

  static const String name = 'RegistrationFlowRoute';
}

class RegistrationFlowRouteArgs {
  const RegistrationFlowRouteArgs({this.key});

  final _i22.Key? key;

  @override
  String toString() {
    return 'RegistrationFlowRouteArgs{key: $key}';
  }
}
