// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i24;

import '../presentation/screens/add_company_screens/add_company_flowscreen.dart'
    as _i2;
import '../presentation/screens/auth_wrapper_screen/auth_wrapper_screen.dart'
    as _i3;
import '../presentation/screens/company_profile_sceen/company_profile_screen.dart'
    as _i20;
import '../presentation/screens/email_verification_screen/email_verification_screen.dart'
    as _i23;
import '../presentation/screens/home_screen/home_screen.dart' as _i7;
import '../presentation/screens/job_form/job_form_flow_screen.dart' as _i17;
import '../presentation/screens/jobs_screen/jobs_screen.dart' as _i15;
import '../presentation/screens/login_screen/login_screen.dart' as _i21;
import '../presentation/screens/messages_screen/chat_screen.dart' as _i12;
import '../presentation/screens/messages_screen/messages_screen.dart' as _i18;
import '../presentation/screens/navigator_screen/navigator_screen.dart' as _i5;
import '../presentation/screens/playground/custom_widgets_screen.dart' as _i11;
import '../presentation/screens/playground/flow_view_demo_screen.dart' as _i14;
import '../presentation/screens/playground/manage_1x_2x_3x_images.dart' as _i13;
import '../presentation/screens/playground/playground_screen.dart' as _i8;
import '../presentation/screens/playground/pulsing_button_screen.dart' as _i10;
import '../presentation/screens/playground/theme_test_screen.dart' as _i9;
import '../presentation/screens/profile_screen/profile_screen.dart' as _i19;
import '../presentation/screens/registration_screen/registration_flow_screen.dart'
    as _i22;
import '../presentation/screens/single_job_screen/single_job_screen.dart'
    as _i16;
import '../presentation/screens/splash_screen/spalsh_screen.dart' as _i1;
import '../presentation/screens/unauth_wrapper_screen/unauth_wrapper_screen.dart'
    as _i4;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i24.GlobalKey<_i24.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashScreen());
    },
    AddCompanyFlowRoute.name: (routeData) {
      final args = routeData.argsAs<AddCompanyFlowRouteArgs>(
          orElse: () => const AddCompanyFlowRouteArgs());
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.AddCompanyFlowScreen(key: args.key));
    },
    AuthWrapperRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.AuthWrapperScreen());
    },
    UnAuthWrapperRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.UnAuthWrapperScreen());
    },
    NavigatorRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.NavigatorScreen());
    },
    HomeRouter.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.EmptyRouterPage());
    },
    JobsRouter.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.EmptyRouterPage());
    },
    MessagesRouter.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.EmptyRouterPage());
    },
    ProfileRouter.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.EmptyRouterPage());
    },
    HomeRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.HomeScreen());
    },
    PlaygroundRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i8.PlaygroundScreen(),
          fullscreenDialog: true);
    },
    ThemeTestRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.ThemeTestScreen());
    },
    PulsingButtonRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.PulsingButtonScreen());
    },
    CustomWidgetsRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.CustomWidgetsScreen());
    },
    ChatRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.ChatScreen());
    },
    ManageImagesRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.ManageImagesScreen());
    },
    FlowViewDemoRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i14.FlowViewDemoScreen(),
          fullscreenDialog: true,
          opaque: true,
          barrierDismissible: false);
    },
    JobsRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.JobsScreen());
    },
    SingleJobRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i16.SingleJobScreen());
    },
    JobFormFlowRoute.name: (routeData) {
      final args = routeData.argsAs<JobFormFlowRouteArgs>(
          orElse: () => const JobFormFlowRouteArgs());
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: _i17.JobFormFlowScreen(key: args.key),
          fullscreenDialog: true,
          opaque: true,
          barrierDismissible: false);
    },
    MessagesRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i18.MessagesScreen());
    },
    ProfileRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i19.ProfileScreen());
    },
    CompanyProfileRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i20.CompanyProfileScreen());
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i21.LoginScreen(key: args.key));
    },
    RegistrationFlowRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i22.RegistrationFlowScreen());
    },
    EmailVerificationRoute.name: (routeData) {
      final args = routeData.argsAs<EmailVerificationRouteArgs>();
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i23.EmailVerificationScreen(key: args.key, email: args.email));
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(SplashRoute.name, path: 'splash'),
        _i6.RouteConfig(AddCompanyFlowRoute.name,
            path: 'add-company-flow-screen'),
        _i6.RouteConfig(AuthWrapperRoute.name, path: '/auth', children: [
          _i6.RouteConfig(NavigatorRoute.name,
              path: '',
              parent: AuthWrapperRoute.name,
              children: [
                _i6.RouteConfig(HomeRouter.name,
                    path: 'home-screen',
                    parent: NavigatorRoute.name,
                    children: [
                      _i6.RouteConfig(HomeRoute.name,
                          path: '', parent: HomeRouter.name),
                      _i6.RouteConfig(PlaygroundRoute.name,
                          path: 'playground',
                          parent: HomeRouter.name,
                          meta: <String, dynamic>{'hideBottomNav': true}),
                      _i6.RouteConfig(ThemeTestRoute.name,
                          path: 'theme-test', parent: HomeRouter.name),
                      _i6.RouteConfig(PulsingButtonRoute.name,
                          path: 'pulsing-button-screen',
                          parent: HomeRouter.name),
                      _i6.RouteConfig(CustomWidgetsRoute.name,
                          path: 'custom-widgets-screen',
                          parent: HomeRouter.name),
                      _i6.RouteConfig(ChatRoute.name,
                          path: 'chat-screen', parent: HomeRouter.name),
                      _i6.RouteConfig(ManageImagesRoute.name,
                          path: 'manage-images-screen',
                          parent: HomeRouter.name),
                      _i6.RouteConfig(FlowViewDemoRoute.name,
                          path: 'flow-view-demo-screen',
                          parent: HomeRouter.name)
                    ]),
                _i6.RouteConfig(JobsRouter.name,
                    path: 'jobs-screen',
                    parent: NavigatorRoute.name,
                    children: [
                      _i6.RouteConfig(JobsRoute.name,
                          path: '', parent: JobsRouter.name),
                      _i6.RouteConfig(SingleJobRoute.name,
                          path: 'single-job-screen', parent: JobsRouter.name),
                      _i6.RouteConfig(JobFormFlowRoute.name,
                          path: 'job-form-flow-screen',
                          parent: JobsRouter.name,
                          meta: <String, dynamic>{'hideBottomNav': true})
                    ]),
                _i6.RouteConfig(MessagesRouter.name,
                    path: 'messages-screen',
                    parent: NavigatorRoute.name,
                    children: [
                      _i6.RouteConfig(MessagesRoute.name,
                          path: '', parent: MessagesRouter.name)
                    ]),
                _i6.RouteConfig(ProfileRouter.name,
                    path: 'profile-screen',
                    parent: NavigatorRoute.name,
                    children: [
                      _i6.RouteConfig(ProfileRoute.name,
                          path: '', parent: ProfileRouter.name),
                      _i6.RouteConfig(CompanyProfileRoute.name,
                          path: 'company-profile-screen',
                          parent: ProfileRouter.name)
                    ])
              ])
        ]),
        _i6.RouteConfig(UnAuthWrapperRoute.name, path: '/unauth', children: [
          _i6.RouteConfig('#redirect',
              path: '',
              parent: UnAuthWrapperRoute.name,
              redirectTo: 'login',
              fullMatch: true),
          _i6.RouteConfig(LoginRoute.name,
              path: 'login', parent: UnAuthWrapperRoute.name),
          _i6.RouteConfig(RegistrationFlowRoute.name,
              path: 'register', parent: UnAuthWrapperRoute.name),
          _i6.RouteConfig(EmailVerificationRoute.name,
              path: 'verify-email', parent: UnAuthWrapperRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: 'splash');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.AddCompanyFlowScreen]
class AddCompanyFlowRoute extends _i6.PageRouteInfo<AddCompanyFlowRouteArgs> {
  AddCompanyFlowRoute({_i24.Key? key})
      : super(AddCompanyFlowRoute.name,
            path: 'add-company-flow-screen',
            args: AddCompanyFlowRouteArgs(key: key));

  static const String name = 'AddCompanyFlowRoute';
}

class AddCompanyFlowRouteArgs {
  const AddCompanyFlowRouteArgs({this.key});

  final _i24.Key? key;

  @override
  String toString() {
    return 'AddCompanyFlowRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.AuthWrapperScreen]
class AuthWrapperRoute extends _i6.PageRouteInfo<void> {
  const AuthWrapperRoute({List<_i6.PageRouteInfo>? children})
      : super(AuthWrapperRoute.name, path: '/auth', initialChildren: children);

  static const String name = 'AuthWrapperRoute';
}

/// generated route for
/// [_i4.UnAuthWrapperScreen]
class UnAuthWrapperRoute extends _i6.PageRouteInfo<void> {
  const UnAuthWrapperRoute({List<_i6.PageRouteInfo>? children})
      : super(UnAuthWrapperRoute.name,
            path: '/unauth', initialChildren: children);

  static const String name = 'UnAuthWrapperRoute';
}

/// generated route for
/// [_i5.NavigatorScreen]
class NavigatorRoute extends _i6.PageRouteInfo<void> {
  const NavigatorRoute({List<_i6.PageRouteInfo>? children})
      : super(NavigatorRoute.name, path: '', initialChildren: children);

  static const String name = 'NavigatorRoute';
}

/// generated route for
/// [_i6.EmptyRouterPage]
class HomeRouter extends _i6.PageRouteInfo<void> {
  const HomeRouter({List<_i6.PageRouteInfo>? children})
      : super(HomeRouter.name, path: 'home-screen', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i6.EmptyRouterPage]
class JobsRouter extends _i6.PageRouteInfo<void> {
  const JobsRouter({List<_i6.PageRouteInfo>? children})
      : super(JobsRouter.name, path: 'jobs-screen', initialChildren: children);

  static const String name = 'JobsRouter';
}

/// generated route for
/// [_i6.EmptyRouterPage]
class MessagesRouter extends _i6.PageRouteInfo<void> {
  const MessagesRouter({List<_i6.PageRouteInfo>? children})
      : super(MessagesRouter.name,
            path: 'messages-screen', initialChildren: children);

  static const String name = 'MessagesRouter';
}

/// generated route for
/// [_i6.EmptyRouterPage]
class ProfileRouter extends _i6.PageRouteInfo<void> {
  const ProfileRouter({List<_i6.PageRouteInfo>? children})
      : super(ProfileRouter.name,
            path: 'profile-screen', initialChildren: children);

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i7.HomeScreen]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i8.PlaygroundScreen]
class PlaygroundRoute extends _i6.PageRouteInfo<void> {
  const PlaygroundRoute() : super(PlaygroundRoute.name, path: 'playground');

  static const String name = 'PlaygroundRoute';
}

/// generated route for
/// [_i9.ThemeTestScreen]
class ThemeTestRoute extends _i6.PageRouteInfo<void> {
  const ThemeTestRoute() : super(ThemeTestRoute.name, path: 'theme-test');

  static const String name = 'ThemeTestRoute';
}

/// generated route for
/// [_i10.PulsingButtonScreen]
class PulsingButtonRoute extends _i6.PageRouteInfo<void> {
  const PulsingButtonRoute()
      : super(PulsingButtonRoute.name, path: 'pulsing-button-screen');

  static const String name = 'PulsingButtonRoute';
}

/// generated route for
/// [_i11.CustomWidgetsScreen]
class CustomWidgetsRoute extends _i6.PageRouteInfo<void> {
  const CustomWidgetsRoute()
      : super(CustomWidgetsRoute.name, path: 'custom-widgets-screen');

  static const String name = 'CustomWidgetsRoute';
}

/// generated route for
/// [_i12.ChatScreen]
class ChatRoute extends _i6.PageRouteInfo<void> {
  const ChatRoute() : super(ChatRoute.name, path: 'chat-screen');

  static const String name = 'ChatRoute';
}

/// generated route for
/// [_i13.ManageImagesScreen]
class ManageImagesRoute extends _i6.PageRouteInfo<void> {
  const ManageImagesRoute()
      : super(ManageImagesRoute.name, path: 'manage-images-screen');

  static const String name = 'ManageImagesRoute';
}

/// generated route for
/// [_i14.FlowViewDemoScreen]
class FlowViewDemoRoute extends _i6.PageRouteInfo<void> {
  const FlowViewDemoRoute()
      : super(FlowViewDemoRoute.name, path: 'flow-view-demo-screen');

  static const String name = 'FlowViewDemoRoute';
}

/// generated route for
/// [_i15.JobsScreen]
class JobsRoute extends _i6.PageRouteInfo<void> {
  const JobsRoute() : super(JobsRoute.name, path: '');

  static const String name = 'JobsRoute';
}

/// generated route for
/// [_i16.SingleJobScreen]
class SingleJobRoute extends _i6.PageRouteInfo<void> {
  const SingleJobRoute()
      : super(SingleJobRoute.name, path: 'single-job-screen');

  static const String name = 'SingleJobRoute';
}

/// generated route for
/// [_i17.JobFormFlowScreen]
class JobFormFlowRoute extends _i6.PageRouteInfo<JobFormFlowRouteArgs> {
  JobFormFlowRoute({_i24.Key? key})
      : super(JobFormFlowRoute.name,
            path: 'job-form-flow-screen', args: JobFormFlowRouteArgs(key: key));

  static const String name = 'JobFormFlowRoute';
}

class JobFormFlowRouteArgs {
  const JobFormFlowRouteArgs({this.key});

  final _i24.Key? key;

  @override
  String toString() {
    return 'JobFormFlowRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i18.MessagesScreen]
class MessagesRoute extends _i6.PageRouteInfo<void> {
  const MessagesRoute() : super(MessagesRoute.name, path: '');

  static const String name = 'MessagesRoute';
}

/// generated route for
/// [_i19.ProfileScreen]
class ProfileRoute extends _i6.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i20.CompanyProfileScreen]
class CompanyProfileRoute extends _i6.PageRouteInfo<void> {
  const CompanyProfileRoute()
      : super(CompanyProfileRoute.name, path: 'company-profile-screen');

  static const String name = 'CompanyProfileRoute';
}

/// generated route for
/// [_i21.LoginScreen]
class LoginRoute extends _i6.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i24.Key? key})
      : super(LoginRoute.name, path: 'login', args: LoginRouteArgs(key: key));

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i24.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i22.RegistrationFlowScreen]
class RegistrationFlowRoute extends _i6.PageRouteInfo<void> {
  const RegistrationFlowRoute()
      : super(RegistrationFlowRoute.name, path: 'register');

  static const String name = 'RegistrationFlowRoute';
}

/// generated route for
/// [_i23.EmailVerificationScreen]
class EmailVerificationRoute
    extends _i6.PageRouteInfo<EmailVerificationRouteArgs> {
  EmailVerificationRoute({_i24.Key? key, required String email})
      : super(EmailVerificationRoute.name,
            path: 'verify-email',
            args: EmailVerificationRouteArgs(key: key, email: email));

  static const String name = 'EmailVerificationRoute';
}

class EmailVerificationRouteArgs {
  const EmailVerificationRouteArgs({this.key, required this.email});

  final _i24.Key? key;

  final String email;

  @override
  String toString() {
    return 'EmailVerificationRouteArgs{key: $key, email: $email}';
  }
}
