// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i14;
import 'package:flutter/material.dart' as _i22;

import '../presentation/screens/company_profile_sceen/company_profile_screen.dart'
    as _i21;
import '../presentation/screens/counter_screen/counter_screen.dart' as _i16;
import '../presentation/screens/home_screen/home_screen.dart' as _i15;
import '../presentation/screens/job_form/job_form_flow_screen.dart' as _i8;
import '../presentation/screens/jobs_screen/jobs_screen.dart' as _i17;
import '../presentation/screens/messages_screen/chat_screen.dart' as _i5;
import '../presentation/screens/messages_screen/messages_screen.dart' as _i19;
import '../presentation/screens/navigator_screen/navigator_screen.dart' as _i13;
import '../presentation/screens/playground/custom_widgets_screen.dart' as _i4;
import '../presentation/screens/playground/flow_view_demo_screen.dart' as _i7;
import '../presentation/screens/playground/manage_1x_2x_3x_images.dart' as _i6;
import '../presentation/screens/playground/playground_screen.dart' as _i1;
import '../presentation/screens/playground/pulsing_button_screen.dart' as _i3;
import '../presentation/screens/playground/theme_test_screen.dart' as _i2;
import '../presentation/screens/profile_screen/profile_screen.dart' as _i20;
import '../presentation/screens/sign_in_up_screen/basic_info_screen.dart'
    as _i11;
import '../presentation/screens/sign_in_up_screen/email_verification.dart'
    as _i12;
import '../presentation/screens/sign_in_up_screen/login_screen.dart' as _i9;
import '../presentation/screens/sign_in_up_screen/registration_screen.dart'
    as _i10;
import '../presentation/screens/single_job_screen/single_job_screen.dart'
    as _i18;

class AppRouter extends _i14.RootStackRouter {
  AppRouter([_i22.GlobalKey<_i22.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    PlaygroundRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.PlaygroundScreen());
    },
    ThemeTestRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.ThemeTestScreen());
    },
    PulsingButtonRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.PulsingButtonScreen());
    },
    CustomWidgetsRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.CustomWidgetsScreen());
    },
    ChatRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ChatScreen());
    },
    ManageImagesRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ManageImagesScreen());
    },
    FlowViewDemoRoute.name: (routeData) {
      return _i14.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i7.FlowViewDemoScreen(),
          fullscreenDialog: true,
          opaque: true,
          barrierDismissible: false);
    },
    JobFormFlowRoute.name: (routeData) {
      final args = routeData.argsAs<JobFormFlowRouteArgs>(
          orElse: () => const JobFormFlowRouteArgs());
      return _i14.CustomPage<dynamic>(
          routeData: routeData,
          child: _i8.JobFormFlowScreen(key: args.key),
          fullscreenDialog: true,
          opaque: true,
          barrierDismissible: false);
    },
    LoginRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.LoginScreen());
    },
    RegistrationRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.RegistrationScreen());
    },
    BasicInfoRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.BasicInfoScreen());
    },
    EmailVerificationRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: _i12.EmailVerificationScreen());
    },
    NavigatorRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.NavigatorScreen());
    },
    HomeRouter.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.EmptyRouterPage());
    },
    JobsRouter.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.EmptyRouterPage());
    },
    MessagesRouter.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.EmptyRouterPage());
    },
    ProfileRouter.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.EmptyRouterPage());
    },
    HomeRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.HomeScreen());
    },
    CounterRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i16.CounterScreen());
    },
    JobsRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i17.JobsScreen());
    },
    SingleJobRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i18.SingleJobScreen());
    },
    MessagesRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i19.MessagesScreen());
    },
    ProfileRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i20.ProfileScreen());
    },
    CompanyProfileRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i21.CompanyProfileScreen());
    }
  };

  @override
  List<_i14.RouteConfig> get routes => [
        _i14.RouteConfig(PlaygroundRoute.name, path: '/'),
        _i14.RouteConfig(ThemeTestRoute.name, path: 'theme-test-screen'),
        _i14.RouteConfig(PulsingButtonRoute.name,
            path: 'pulsing-button-screen'),
        _i14.RouteConfig(CustomWidgetsRoute.name,
            path: 'custom-widgets-screen'),
        _i14.RouteConfig(ChatRoute.name, path: 'chat-screen'),
        _i14.RouteConfig(ChatRoute.name, path: 'chat-screen'),
        _i14.RouteConfig(ManageImagesRoute.name, path: 'manage-images-screen'),
        _i14.RouteConfig(FlowViewDemoRoute.name, path: 'flow-view-demo-screen'),
        _i14.RouteConfig(JobFormFlowRoute.name, path: 'job-form-flow-screen'),
        _i14.RouteConfig(LoginRoute.name, path: 'LoginRoute'),
        _i14.RouteConfig(RegistrationRoute.name, path: 'registration-screen'),
        _i14.RouteConfig(BasicInfoRoute.name, path: 'basic-info-screen'),
        _i14.RouteConfig(EmailVerificationRoute.name,
            path: 'email-verification-screen'),
        _i14.RouteConfig(NavigatorRoute.name,
            path: 'navigator-screen',
            children: [
              _i14.RouteConfig(HomeRouter.name,
                  path: 'home-screen',
                  parent: NavigatorRoute.name,
                  children: [
                    _i14.RouteConfig(HomeRoute.name,
                        path: '', parent: HomeRouter.name),
                    _i14.RouteConfig(CounterRoute.name,
                        path: 'counter-screen', parent: HomeRouter.name)
                  ]),
              _i14.RouteConfig(JobsRouter.name,
                  path: 'jobs-screen',
                  parent: NavigatorRoute.name,
                  children: [
                    _i14.RouteConfig(JobsRoute.name,
                        path: '', parent: JobsRouter.name),
                    _i14.RouteConfig(SingleJobRoute.name,
                        path: 'single-job-screen', parent: JobsRouter.name)
                  ]),
              _i14.RouteConfig(MessagesRouter.name,
                  path: 'messages-screen',
                  parent: NavigatorRoute.name,
                  children: [
                    _i14.RouteConfig(MessagesRoute.name,
                        path: '', parent: MessagesRouter.name)
                  ]),
              _i14.RouteConfig(ProfileRouter.name,
                  path: 'profile-screen',
                  parent: NavigatorRoute.name,
                  children: [
                    _i14.RouteConfig(ProfileRoute.name,
                        path: '', parent: ProfileRouter.name),
                    _i14.RouteConfig(CompanyProfileRoute.name,
                        path: 'company-profile-screen',
                        parent: ProfileRouter.name)
                  ])
            ])
      ];
}

/// generated route for
/// [_i1.PlaygroundScreen]
class PlaygroundRoute extends _i14.PageRouteInfo<void> {
  const PlaygroundRoute() : super(PlaygroundRoute.name, path: '/');

  static const String name = 'PlaygroundRoute';
}

/// generated route for
/// [_i2.ThemeTestScreen]
class ThemeTestRoute extends _i14.PageRouteInfo<void> {
  const ThemeTestRoute()
      : super(ThemeTestRoute.name, path: 'theme-test-screen');

  static const String name = 'ThemeTestRoute';
}

/// generated route for
/// [_i3.PulsingButtonScreen]
class PulsingButtonRoute extends _i14.PageRouteInfo<void> {
  const PulsingButtonRoute()
      : super(PulsingButtonRoute.name, path: 'pulsing-button-screen');

  static const String name = 'PulsingButtonRoute';
}

/// generated route for
/// [_i4.CustomWidgetsScreen]
class CustomWidgetsRoute extends _i14.PageRouteInfo<void> {
  const CustomWidgetsRoute()
      : super(CustomWidgetsRoute.name, path: 'custom-widgets-screen');

  static const String name = 'CustomWidgetsRoute';
}

/// generated route for
/// [_i5.ChatScreen]
class ChatRoute extends _i14.PageRouteInfo<void> {
  const ChatRoute() : super(ChatRoute.name, path: 'chat-screen');

  static const String name = 'ChatRoute';
}

/// generated route for
/// [_i6.ManageImagesScreen]
class ManageImagesRoute extends _i14.PageRouteInfo<void> {
  const ManageImagesRoute()
      : super(ManageImagesRoute.name, path: 'manage-images-screen');

  static const String name = 'ManageImagesRoute';
}

/// generated route for
/// [_i7.FlowViewDemoScreen]
class FlowViewDemoRoute extends _i14.PageRouteInfo<void> {
  const FlowViewDemoRoute()
      : super(FlowViewDemoRoute.name, path: 'flow-view-demo-screen');

  static const String name = 'FlowViewDemoRoute';
}

/// generated route for
/// [_i8.JobFormFlowScreen]
class JobFormFlowRoute extends _i14.PageRouteInfo<JobFormFlowRouteArgs> {
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
/// [_i9.LoginScreen]
class LoginRoute extends _i14.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: 'LoginRoute');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i10.RegistrationScreen]
class RegistrationRoute extends _i14.PageRouteInfo<void> {
  const RegistrationRoute()
      : super(RegistrationRoute.name, path: 'registration-screen');

  static const String name = 'RegistrationRoute';
}

/// generated route for
/// [_i11.BasicInfoScreen]
class BasicInfoRoute extends _i14.PageRouteInfo<void> {
  const BasicInfoRoute()
      : super(BasicInfoRoute.name, path: 'basic-info-screen');

  static const String name = 'BasicInfoRoute';
}

/// generated route for
/// [_i12.EmailVerificationScreen]
class EmailVerificationRoute extends _i14.PageRouteInfo<void> {
  const EmailVerificationRoute()
      : super(EmailVerificationRoute.name, path: 'email-verification-screen');

  static const String name = 'EmailVerificationRoute';
}

/// generated route for
/// [_i13.NavigatorScreen]
class NavigatorRoute extends _i14.PageRouteInfo<void> {
  const NavigatorRoute({List<_i14.PageRouteInfo>? children})
      : super(NavigatorRoute.name,
            path: 'navigator-screen', initialChildren: children);

  static const String name = 'NavigatorRoute';
}

/// generated route for
/// [_i14.EmptyRouterPage]
class HomeRouter extends _i14.PageRouteInfo<void> {
  const HomeRouter({List<_i14.PageRouteInfo>? children})
      : super(HomeRouter.name, path: 'home-screen', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i14.EmptyRouterPage]
class JobsRouter extends _i14.PageRouteInfo<void> {
  const JobsRouter({List<_i14.PageRouteInfo>? children})
      : super(JobsRouter.name, path: 'jobs-screen', initialChildren: children);

  static const String name = 'JobsRouter';
}

/// generated route for
/// [_i14.EmptyRouterPage]
class MessagesRouter extends _i14.PageRouteInfo<void> {
  const MessagesRouter({List<_i14.PageRouteInfo>? children})
      : super(MessagesRouter.name,
            path: 'messages-screen', initialChildren: children);

  static const String name = 'MessagesRouter';
}

/// generated route for
/// [_i14.EmptyRouterPage]
class ProfileRouter extends _i14.PageRouteInfo<void> {
  const ProfileRouter({List<_i14.PageRouteInfo>? children})
      : super(ProfileRouter.name,
            path: 'profile-screen', initialChildren: children);

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i15.HomeScreen]
class HomeRoute extends _i14.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i16.CounterScreen]
class CounterRoute extends _i14.PageRouteInfo<void> {
  const CounterRoute() : super(CounterRoute.name, path: 'counter-screen');

  static const String name = 'CounterRoute';
}

/// generated route for
/// [_i17.JobsScreen]
class JobsRoute extends _i14.PageRouteInfo<void> {
  const JobsRoute() : super(JobsRoute.name, path: '');

  static const String name = 'JobsRoute';
}

/// generated route for
/// [_i18.SingleJobScreen]
class SingleJobRoute extends _i14.PageRouteInfo<void> {
  const SingleJobRoute()
      : super(SingleJobRoute.name, path: 'single-job-screen');

  static const String name = 'SingleJobRoute';
}

/// generated route for
/// [_i19.MessagesScreen]
class MessagesRoute extends _i14.PageRouteInfo<void> {
  const MessagesRoute() : super(MessagesRoute.name, path: '');

  static const String name = 'MessagesRoute';
}

/// generated route for
/// [_i20.ProfileScreen]
class ProfileRoute extends _i14.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i21.CompanyProfileScreen]
class CompanyProfileRoute extends _i14.PageRouteInfo<void> {
  const CompanyProfileRoute()
      : super(CompanyProfileRoute.name, path: 'company-profile-screen');

  static const String name = 'CompanyProfileRoute';
}
