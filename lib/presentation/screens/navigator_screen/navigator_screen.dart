import 'package:doxa_mobile_app/business_logic/blocs/messages_bloc/messages_bloc.dart';
import 'package:doxa_mobile_app/business_logic/blocs/profile/profile_bloc.dart';
import 'package:doxa_mobile_app/data/repositories/chat_repository/supabase_chat_repository.dart';
import 'package:doxa_mobile_app/data/repositories/match_repository/supabase_match_repository.dart';
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
        BlocProvider<MessagesBloc>(
          create: (context) => MessagesBloc(
            userRepository: RepositoryProvider.of<UserRepository>(context),
            matchRepository: SupabaseMatchRepository(),
            chatRepository: SupabaseChatRepository(),
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
