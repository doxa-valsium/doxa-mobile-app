import 'dart:math';
import 'package:doxa_mobile_app/presentation/screens/messages_screen/local_widgets/conversation_card.dart';
import 'package:doxa_mobile_app/presentation/screens/messages_screen/local_widgets/match_chat_head.dart';
import 'package:doxa_mobile_app/presentation/screens/messages_screen/local_widgets/search_bar.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  static const String route = 'messages-screen';

  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomAppBar(
          isLeading: false,
          leading: null,
          title: Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 16.0),
            child: Text(
              'Jobs',
              style: Theme.of(context).textTheme.headline5?.copyWith(color: Theme.of(context).colorScheme.onBackground),
            ),
          ),
          body: SingleChildScrollView(
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
                        'Match Queue (7)',
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
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return const SizedBox(width: 8);
                      } else {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: MatchChatHead(timeleft: Random().nextDouble()),
                        );
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Conversation (7)',
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
                        itemCount: 7,
                        itemBuilder: (context, index) => const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: ConversationCard(msgTag: false),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
