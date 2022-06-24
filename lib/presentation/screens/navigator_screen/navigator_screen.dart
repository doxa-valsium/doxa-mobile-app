import 'package:doxa_mobile_app/business_logic/blocs/company/company_bloc.dart';
import 'package:doxa_mobile_app/business_logic/blocs/profile/profile_bloc.dart';
import 'package:doxa_mobile_app/data/repositories/company_repository/company_repository.dart';
import 'package:doxa_mobile_app/data/repositories/user_repository/user_repository.dart';
import 'package:doxa_mobile_app/presentation/widgets/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:doxa_mobile_app/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigatorScreen extends StatelessWidget {
  static const String route = '';
  const NavigatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProfileBloc>(
          create: (context) => ProfileBloc(
            userRepository: RepositoryProvider.of<UserRepository>(context),
          ),
        ),
        
        BlocProvider<CompanyBloc>(
          create: (context) => CompanyBloc(
            companyRepository: RepositoryProvider.of<CompanyRepository>(context),
          ),
        ),
      ],
      child: AutoTabsScaffold(
        routes: const [
          HomeRouter(),
          JobsRouter(),
          MessagesRouter(),
          ProfileRouter(),
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          return BottomNavBar(
            tabsRouter: tabsRouter,
          );
        },
      ),
    );
  }
}
