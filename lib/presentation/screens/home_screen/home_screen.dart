import 'package:doxa_mobile_app/presentation/screens/messages_screen/local_widgets/conversation_card.dart';
import 'package:doxa_mobile_app/presentation/screens/messages_screen/local_widgets/match_chat_head.dart';
import 'package:doxa_mobile_app/presentation/widgets/active_job_card.dart';
import 'package:doxa_mobile_app/presentation/widgets/avatar.dart';
import 'package:doxa_mobile_app/styles.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class HomeScreen extends StatelessWidget {
  static const String route = 'home-screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                toolbarHeight: 100,
                backgroundColor: Theme.of(context).colorScheme.background,
                title: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello,',
                            style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                          ),
                          Text(
                            'Daniyal',
                            style: Theme.of(context).textTheme.headline5?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                          ),
                        ],
                      ),
                      Container(
                        child: const Avatar(
                          radius: 30,
                          avatarUrl: 'https://picsum.photos/200',
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: Styles.elevation3,
                        ),
                      ),
                    ],
                  ),
                ),
                elevation: 0,
              ),
            ];
          },
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
                      Text(
                        'Active Jobs',
                        style: Theme.of(context).textTheme.headline6?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 150,
                  child: ListView.builder(
                      clipBehavior: Clip.none,
                      primary: false,
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return const ActiveJobCard();
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pending (5)',
                        style: Theme.of(context).textTheme.headline6?.copyWith(color: Theme.of(context).colorScheme.onBackground),
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
                        'Unread Messages (3)',
                        style: Theme.of(context).textTheme.headline6?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 8),
                      ListView.builder(
                        primary: false,
                        shrinkWrap: true,
                        physics: const ScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemCount: 3,
                        itemBuilder: (context, index) => const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: ConversationCard(msgTag: true),
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
