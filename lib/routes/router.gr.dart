// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i23;

import '../presentation/screens/auth_wrapper_screen/auth_wrapper_screen.dart'
    as _i1;
import '../presentation/screens/company_profile_sceen/company_profile_screen.dart'
    as _i19;
import '../presentation/screens/email_verification_screen/email_verification_screen.dart'
    as _i22;
import '../presentation/screens/home_screen/home_screen.dart' as _i5;
import '../presentation/screens/job_form/job_form_flow_screen.dart' as _i16;
import '../presentation/screens/jobs_screen/jobs_screen.dart' as _i14;
import '../presentation/screens/login_screen/login_screen.dart' as _i20;
import '../presentation/screens/messages_screen/chat_screen.dart' as _i11;
import '../presentation/screens/messages_screen/messages_screen.dart' as _i17;
import '../presentation/screens/navigator_screen/navigator_screen.dart' as _i3;
import '../presentation/screens/playground/custom_widgets_screen.dart' as _i10;
import '../presentation/screens/playground/flow_view_demo_screen.dart' as _i13;
import '../presentation/screens/playground/manage_1x_2x_3x_images.dart' as _i12;
import '../presentation/screens/playground/playground_screen.dart' as _i6;
import '../presentation/screens/playground/pulsing_button_screen.dart' as _i9;
import '../presentation/screens/playground/theme_test_screen.dart' as _i8;
import '../presentation/screens/profile_screen/profile_screen.dart' as _i18;
import '../presentation/screens/registration_screen/registration_flow_screen.dart'
    as _i21;
import '../presentation/screens/single_job_screen/single_job_screen.dart'
    as _i15;
import '../presentation/screens/splash_screen/spalsh_screen.dart' as _i7;
import '../presentation/screens/unauth_wrapper_screen/unauth_wrapper_screen.dart'
    as _i2;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i23.GlobalKey<_i23.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    AuthWrapperRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.AuthWrapperScreen());
    },
    UnAuthWrapperRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.UnAuthWrapperScreen());
    },
    NavigatorRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.NavigatorScreen());
    },
    HomeRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.EmptyRouterPage());
    },
    JobsRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.EmptyRouterPage());
    },
    MessagesRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.EmptyRouterPage());
    },
    ProfileRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.EmptyRouterPage());
    },
    HomeRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.HomeScreen());
    },
    PlaygroundRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.PlaygroundScreen());
    },
    SplashRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.SplashScreen());
    },
    ThemeTestRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.ThemeTestScreen());
    },
    PulsingButtonRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.PulsingButtonScreen());
    },
    CustomWidgetsRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.CustomWidgetsScreen());
    },
    ChatRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.ChatScreen());
    },
    ManageImagesRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.ManageImagesScreen());
    },
    FlowViewDemoRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i13.FlowViewDemoScreen(),
          fullscreenDialog: true,
          opaque: true,
          barrierDismissible: false);
    },
    JobsRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.JobsScreen());
    },
    SingleJobRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.SingleJobScreen());
    },
    JobFormFlowRoute.name: (routeData) {
      final args = routeData.argsAs<JobFormFlowRouteArgs>(
          orElse: () => const JobFormFlowRouteArgs());
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: _i16.JobFormFlowScreen(key: args.key),
          fullscreenDialog: true,
          opaque: true,
          barrierDismissible: false);
    },
    MessagesRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i17.MessagesScreen());
    },
    ProfileRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i18.ProfileScreen());
    },
    CompanyProfileRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i19.CompanyProfileScreen());
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: _i20.LoginScreen(key: args.key));
    },
    RegistrationFlowRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i21.RegistrationFlowScreen());
    },
    EmailVerificationRoute.name: (routeData) {
      final args = routeData.argsAs<EmailVerificationRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i22.EmailVerificationScreen(key: args.key, email: args.email));
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(AuthWrapperRoute.name, path: '/auth', children: [
          _i4.RouteConfig(NavigatorRoute.name,
              path: '',
              parent: AuthWrapperRoute.name,
              children: [
                _i4.RouteConfig(HomeRouter.name,
                    path: 'home-screen',
                    parent: NavigatorRoute.name,
                    children: [
                      _i4.RouteConfig(HomeRoute.name,
                          path: '', parent: HomeRouter.name),
                      _i4.RouteConfig(PlaygroundRoute.name,
                          path: 'playground',
                          parent: HomeRouter.name,
                          meta: <String, dynamic>{'hideBottomNav': true}),
                      _i4.RouteConfig(SplashRoute.name,
                          path: 'splash', parent: HomeRouter.name),
                      _i4.RouteConfig(ThemeTestRoute.name,
                          path: 'theme-test', parent: HomeRouter.name),
                      _i4.RouteConfig(PulsingButtonRoute.name,
                          path: 'pulsing-button-screen',
                          parent: HomeRouter.name),
                      _i4.RouteConfig(CustomWidgetsRoute.name,
                          path: 'custom-widgets-screen',
                          parent: HomeRouter.name),
                      _i4.RouteConfig(ChatRoute.name,
                          path: 'chat-screen', parent: HomeRouter.name),
                      _i4.RouteConfig(ManageImagesRoute.name,
                          path: 'manage-images-screen',
                          parent: HomeRouter.name),
                      _i4.RouteConfig(FlowViewDemoRoute.name,
                          path: 'flow-view-demo-screen',
                          parent: HomeRouter.name)
                    ]),
                _i4.RouteConfig(JobsRouter.name,
                    path: 'jobs-screen',
                    parent: NavigatorRoute.name,
                    children: [
                      _i4.RouteConfig(JobsRoute.name,
                          path: '', parent: JobsRouter.name),
                      _i4.RouteConfig(SingleJobRoute.name,
                          path: 'single-job-screen', parent: JobsRouter.name),
                      _i4.RouteConfig(JobFormFlowRoute.name,
                          path: 'job-form-flow-screen', parent: JobsRouter.name)
                    ]),
                _i4.RouteConfig(MessagesRouter.name,
                    path: 'messages-screen',
                    parent: NavigatorRoute.name,
                    children: [
                      _i4.RouteConfig(MessagesRoute.name,
                          path: '', parent: MessagesRouter.name)
                    ]),
                _i4.RouteConfig(ProfileRouter.name,
                    path: 'profile-screen',
                    parent: NavigatorRoute.name,
                    children: [
                      _i4.RouteConfig(ProfileRoute.name,
                          path: '', parent: ProfileRouter.name),
                      _i4.RouteConfig(CompanyProfileRoute.name,
                          path: 'company-profile-screen',
                          parent: ProfileRouter.name)
                    ])
              ])
        ]),
        _i4.RouteConfig(UnAuthWrapperRoute.name, path: '/unauth', children: [
          _i4.RouteConfig('#redirect',
              path: '',
              parent: UnAuthWrapperRoute.name,
              redirectTo: 'login',
              fullMatch: true),
          _i4.RouteConfig(LoginRoute.name,
              path: 'login', parent: UnAuthWrapperRoute.name),
          _i4.RouteConfig(RegistrationFlowRoute.name,
              path: 'register', parent: UnAuthWrapperRoute.name),
          _i4.RouteConfig(EmailVerificationRoute.name,
              path: 'verify-email', parent: UnAuthWrapperRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.AuthWrapperScreen]
class AuthWrapperRoute extends _i4.PageRouteInfo<void> {
  const AuthWrapperRoute({List<_i4.PageRouteInfo>? children})
      : super(AuthWrapperRoute.name, path: '/auth', initialChildren: children);

  static const String name = 'AuthWrapperRoute';
}

/// generated route for
/// [_i2.UnAuthWrapperScreen]
class UnAuthWrapperRoute extends _i4.PageRouteInfo<void> {
  const UnAuthWrapperRoute({List<_i4.PageRouteInfo>? children})
      : super(UnAuthWrapperRoute.name,
            path: '/unauth', initialChildren: children);

  static const String name = 'UnAuthWrapperRoute';
}

/// generated route for
/// [_i3.NavigatorScreen]
class NavigatorRoute extends _i4.PageRouteInfo<void> {
  const NavigatorRoute({List<_i4.PageRouteInfo>? children})
      : super(NavigatorRoute.name, path: '', initialChildren: children);

  static const String name = 'NavigatorRoute';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class HomeRouter extends _i4.PageRouteInfo<void> {
  const HomeRouter({List<_i4.PageRouteInfo>? children})
      : super(HomeRouter.name, path: 'home-screen', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class JobsRouter extends _i4.PageRouteInfo<void> {
  const JobsRouter({List<_i4.PageRouteInfo>? children})
      : super(JobsRouter.name, path: 'jobs-screen', initialChildren: children);

  static const String name = 'JobsRouter';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class MessagesRouter extends _i4.PageRouteInfo<void> {
  const MessagesRouter({List<_i4.PageRouteInfo>? children})
      : super(MessagesRouter.name,
            path: 'messages-screen', initialChildren: children);

  static const String name = 'MessagesRouter';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class ProfileRouter extends _i4.PageRouteInfo<void> {
  const ProfileRouter({List<_i4.PageRouteInfo>? children})
      : super(ProfileRouter.name,
            path: 'profile-screen', initialChildren: children);

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i5.HomeScreen]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i6.PlaygroundScreen]
class PlaygroundRoute extends _i4.PageRouteInfo<void> {
  const PlaygroundRoute() : super(PlaygroundRoute.name, path: 'playground');

  static const String name = 'PlaygroundRoute';
}

/// generated route for
/// [_i7.SplashScreen]
class SplashRoute extends _i4.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: 'splash');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i8.ThemeTestScreen]
class ThemeTestRoute extends _i4.PageRouteInfo<void> {
  const ThemeTestRoute() : super(ThemeTestRoute.name, path: 'theme-test');

  static const String name = 'ThemeTestRoute';
}

/// generated route for
/// [_i9.PulsingButtonScreen]
class PulsingButtonRoute extends _i4.PageRouteInfo<void> {
  const PulsingButtonRoute()
      : super(PulsingButtonRoute.name, path: 'pulsing-button-screen');

  static const String name = 'PulsingButtonRoute';
}

/// generated route for
/// [_i10.CustomWidgetsScreen]
class CustomWidgetsRoute extends _i4.PageRouteInfo<void> {
  const CustomWidgetsRoute()
      : super(CustomWidgetsRoute.name, path: 'custom-widgets-screen');

  static const String name = 'CustomWidgetsRoute';
}

/// generated route for
/// [_i11.ChatScreen]
class ChatRoute extends _i4.PageRouteInfo<void> {
  const ChatRoute() : super(ChatRoute.name, path: 'chat-screen');

  static const String name = 'ChatRoute';
}

/// generated route for
/// [_i12.ManageImagesScreen]
class ManageImagesRoute extends _i4.PageRouteInfo<void> {
  const ManageImagesRoute()
      : super(ManageImagesRoute.name, path: 'manage-images-screen');

  static const String name = 'ManageImagesRoute';
}

/// generated route for
/// [_i13.FlowViewDemoScreen]
class FlowViewDemoRoute extends _i4.PageRouteInfo<void> {
  const FlowViewDemoRoute()
      : super(FlowViewDemoRoute.name, path: 'flow-view-demo-screen');

  static const String name = 'FlowViewDemoRoute';
}

/// generated route for
/// [_i14.JobsScreen]
class JobsRoute extends _i4.PageRouteInfo<void> {
  const JobsRoute() : super(JobsRoute.name, path: '');

  static const String name = 'JobsRoute';
}

/// generated route for
/// [_i15.SingleJobScreen]
class SingleJobRoute extends _i4.PageRouteInfo<void> {
  const SingleJobRoute()
      : super(SingleJobRoute.name, path: 'single-job-screen');

  static const String name = 'SingleJobRoute';
}

/// generated route for
/// [_i16.JobFormFlowScreen]
class JobFormFlowRoute extends _i4.PageRouteInfo<JobFormFlowRouteArgs> {
  JobFormFlowRoute({_i23.Key? key})
      : super(JobFormFlowRoute.name,
            path: 'job-form-flow-screen', args: JobFormFlowRouteArgs(key: key));

  static const String name = 'JobFormFlowRoute';
}

class JobFormFlowRouteArgs {
  const JobFormFlowRouteArgs({this.key});

  final _i23.Key? key;

  @override
  String toString() {
    return 'JobFormFlowRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i17.MessagesScreen]
class MessagesRoute extends _i4.PageRouteInfo<void> {
  const MessagesRoute() : super(MessagesRoute.name, path: '');

  static const String name = 'MessagesRoute';
}

/// generated route for
/// [_i18.ProfileScreen]
class ProfileRoute extends _i4.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i19.CompanyProfileScreen]
class CompanyProfileRoute extends _i4.PageRouteInfo<void> {
  const CompanyProfileRoute()
      : super(CompanyProfileRoute.name, path: 'company-profile-screen');

  static const String name = 'CompanyProfileRoute';
}

/// generated route for
/// [_i20.LoginScreen]
class LoginRoute extends _i4.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i23.Key? key})
      : super(LoginRoute.name, path: 'login', args: LoginRouteArgs(key: key));

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i23.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i21.RegistrationFlowScreen]
class RegistrationFlowRoute extends _i4.PageRouteInfo<void> {
  const RegistrationFlowRoute()
      : super(RegistrationFlowRoute.name, path: 'register');

  static const String name = 'RegistrationFlowRoute';
}

/// generated route for
/// [_i22.EmailVerificationScreen]
class EmailVerificationRoute
    extends _i4.PageRouteInfo<EmailVerificationRouteArgs> {
  EmailVerificationRoute({_i23.Key? key, required String email})
      : super(EmailVerificationRoute.name,
            path: 'verify-email',
            args: EmailVerificationRouteArgs(key: key, email: email));

  static const String name = 'EmailVerificationRoute';
}

class EmailVerificationRouteArgs {
  const EmailVerificationRouteArgs({this.key, required this.email});

  final _i23.Key? key;

  final String email;

  @override
  String toString() {
    return 'EmailVerificationRouteArgs{key: $key, email: $email}';
  }
}
