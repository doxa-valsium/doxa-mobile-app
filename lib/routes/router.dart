import 'package:auto_route/auto_route.dart';
import 'package:doxa_mobile_app/presentation/screens/company_profile_sceen/company_profile_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/email_verification_screen/email_verification_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/home_screen/home_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/job_form/job_form_flow_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/jobs_screen/jobs_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/messages_screen/chat_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/messages_screen/messages_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/navigator_screen/navigator_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/custom_widgets_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/flow_view_demo_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/login_screen/login_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/manage_1x_2x_3x_images.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/pulsing_button_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/theme_test_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/profile_screen/profile_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/registration_screen/registration_flow_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/single_job_screen/single_job_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/splash_screen/spalsh_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/auth_wrapper_screen/auth_wrapper_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/unauth_wrapper_screen/unauth_wrapper_screen.dart';

@MaterialAutoRouter(
  
  replaceInRouteName: 'Screen,Route',
  routes: [
    
    
    AutoRoute(
      path: AuthWrapperScreen.route,
      page: AuthWrapperScreen,
      children: [
        
        AutoRoute(
        path: NavigatorScreen.route,
        page: NavigatorScreen,
        children: [
          AutoRoute(
            path: HomeScreen.route,
            name: 'HomeRouter',
            page: EmptyRouterPage,
            children: [
              AutoRoute(
                initial: true,
                page: HomeScreen,
              ),
              AutoRoute(
                path: PlaygroundScreen.route,
                page: PlaygroundScreen,
                meta: {'hideBottomNav': true},
              ),
              AutoRoute(
                // name: 'AuthenticatedStackRouter',
                path: SplashScreen.route,
                page: SplashScreen,
              ),
              AutoRoute(
                path: ThemeTestScreen.route,
                page: ThemeTestScreen,
              ),
              AutoRoute(
                path: PulsingButtonScreen.route,
                page: PulsingButtonScreen,
              ),
              AutoRoute(
                path: CustomWidgetsScreen.route,
                page: CustomWidgetsScreen,
              ),
              AutoRoute(
                path: ChatScreen.route,
                page: ChatScreen,
              ),
              AutoRoute(
                path: ManageImagesScreen.route,
                page: ManageImagesScreen,
              ),
              CustomRoute(
                path: FlowViewDemoScreen.route,
                page: FlowViewDemoScreen,
                fullscreenDialog: true,
              ),
            ],
          ),
          AutoRoute(
            path: JobsScreen.route,
            name: 'JobsRouter',
            page: EmptyRouterPage,
            children: [
              AutoRoute(
                initial: true,
                page: JobsScreen,
              ),
              AutoRoute(
                path: SingleJobScreen.route,
                page: SingleJobScreen,
              ),
              CustomRoute(
                path: JobFormFlowScreen.route,
                page: JobFormFlowScreen,
                fullscreenDialog: true,
              ),
            ],
          ),
          AutoRoute(
            path: MessagesScreen.route,
            name: 'MessagesRouter',
            page: EmptyRouterPage,
            children: [
              AutoRoute(
                initial: true,
                page: MessagesScreen,
              ),
            ],
          ),
          AutoRoute(
            path: ProfileScreen.route,
            name: 'ProfileRouter',
            page: EmptyRouterPage,
            children: [
              AutoRoute(
                initial: true,
                page: ProfileScreen,
              ),
              AutoRoute(
                path: CompanyProfileScreen.route,
                page: CompanyProfileScreen,
              ),
            ],
          ),
          
        ],
      ),
      ]
    ),
    AutoRoute(
      path: UnAuthWrapperScreen.route, page: UnAuthWrapperScreen,
        children: [
          AutoRoute(
            path: LoginScreen.route,
            page: LoginScreen,
            initial: true,
          ),
          AutoRoute(
            path: RegistrationFlowScreen.route,
            page: RegistrationFlowScreen,
          ),
          AutoRoute(
            path: EmailVerificationScreen.route,
            page: EmailVerificationScreen,
          ),
        ],),
    
  ],
)
class $AppRouter {}
