import 'dart:math';
import 'package:doxa_mobile_app/business_logic/blocs/messages_bloc/messages_bloc.dart';
import 'package:doxa_mobile_app/presentation/screens/messages_screen/local_widgets/conversation_card.dart';
import 'package:doxa_mobile_app/presentation/screens/messages_screen/local_widgets/match_chat_head.dart';
import 'package:doxa_mobile_app/presentation/screens/messages_screen/local_widgets/search_bar.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_app_bar_and_body.dart';
import 'package:doxa_mobile_app/services/snack_bar_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MessagesScreen extends StatefulWidget {
  static const String route = 'messages-screen';

  const MessagesScreen({Key? key}) : super(key: key);

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  late MessagesBloc _messagesBloc;

  @override
  void initState() {
    _messagesBloc = BlocProvider.of<MessagesBloc>(context);
    _messagesBloc.add(FectchMatches());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomAppBarAndBody(
          title: 'Messages',
          showBackButton: false,
          body: BlocBuilder<MessagesBloc, MessagesState>(
            bloc: _messagesBloc,
            builder: (context, state) {
              if (state is MessagesLoadedState) {
                return BlocListener<MessagesBloc, MessagesState>(
                  listener: (context, state) {
                    if (state is MessagesErrorState) {
                      SnackBarService.showGenericErrorSnackBar(context, state.errorMessage);
                    }
                  },
                  child: SingleChildScrollView(
                    primary: true,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 16),
                              const SearchBar(),
                              const SizedBox(height: 16),
                              Text(
                                'Match Queue (${state.pendingMatches.length})',
                                style: Theme.of(context).textTheme.headline6,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 100,
                          child: ListView.builder(
                              primary: false,
                              shrinkWrap: true,
                              physics: const ScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: state.pendingMatches.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: MatchChatHead(match: state.pendingMatches[index], timeleft: Random().nextDouble()),
                                );
                              }),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Conversation (${state.chats.length})',
                                style: Theme.of(context).textTheme.headline6,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 8),
                              ListView.builder(
                                primary: false,
                                shrinkWrap: true,
                                physics: const ScrollPhysics(),
                                scrollDirection: Axis.vertical,
                                itemCount: state.chats.length,
                                itemBuilder: (context, index) => Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                                  child: ConversationCard(chat: state.chats[index], msgTag: false),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                );
              } else if (state is MessagesErrorState) {
                return Center(
                  child: Text(state.errorMessage),
                );
              }
              else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
