import 'dart:math';

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:doxa_mobile_app/presentation/widgets/default_avatar.dart';

class MessagesScreen extends StatelessWidget {
  static const String route = 'messages-screen';

  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Messages', style: Theme.of(context).textTheme.headline5),
              const SizedBox(height: 16),
              const SearchBar(),
              const SizedBox(height: 16),
              Text('Match Queue (7)', style: Theme.of(context).textTheme.headline6),
              const SizedBox(height: 16),
              MatchChatHead(),
            ],
          ),
        ),
      ),
    );
  }
}

class MatchChatHead extends StatelessWidget {
  const MatchChatHead({
    Key? key,
  }) : super(key: key);

  // generate a random double between 0 and 1
  get timeleft => Random().nextDouble();

  get scheme => ();

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      animation: true,
      animationDuration: 1000,
      radius: 56.0,
      lineWidth: 6,
      percent: timeleft,
      rotateLinearGradient: true,
      startAngle: 20.0,
      reverse: true,
      backgroundColor: Theme.of(context).colorScheme.secondary,
      center: const DefaultAvatar(radius: 41.44),
      linearGradient: LinearGradient(scheme),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.surface),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(children: [
        Flexible(
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search",
              hintStyle: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.surface),
              border: InputBorder.none,
            ),
          ),
        ),
        Icon(Icons.search, color: Theme.of(context).colorScheme.surface),
      ]),
    );
  }
}
