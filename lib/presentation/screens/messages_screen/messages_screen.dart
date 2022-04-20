import 'dart:math';

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:doxa_mobile_app/presentation/widgets/default_avatar.dart';

import '../../../styles.dart';

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
              Expanded(
                flex: 1,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (context, index) => _buildMatchQueueItem(context, index),
                ),
              ),
              Text('Conversation (7)', style: Theme.of(context).textTheme.headline6),
              const SizedBox(height: 8),
              Expanded(
                flex: 3,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 7,
                  itemBuilder: (context, index) => _buildConversationItem(context, index),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildMatchQueueItem(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: MatchChatHead(timeleft: Random().nextDouble()),
    );
  }
}

_buildConversationItem(BuildContext context, int index) {
  return const Padding(
    padding: EdgeInsets.symmetric(vertical: 8.0),
    child: ConversationCard(),
  );
}

class ConversationCard extends StatelessWidget {
  final String canName;

  const ConversationCard({Key? key, this.canName = "Candidate Name"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: Styles.elevation2,
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          const DefaultAvatar(radius: 30),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(canName, style: Theme.of(context).textTheme.bodyText2),
              Text(
                'Job Name Candidate Matched For',
                style: Theme.of(context).textTheme.overline?.copyWith(color: Theme.of(context).colorScheme.onSurface),
              ),
              Text(
                'Hey! Is this job available?',
                style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.onSurface),
              ),
            ],
          ),
          const Spacer(),
          Column(
            children: [
              Text(
                "11: 06 PM",
                style: Theme.of(context).textTheme.caption?.copyWith(color: Theme.of(context).colorScheme.onSurface),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ],
      ),
    );
  }
}

class MatchChatHead extends StatelessWidget {
  const MatchChatHead({Key? key, required this.timeleft, this.nameData = "Ahmed Raza"}) : super(key: key);

  final double timeleft;
  final String nameData;

  @override
  Widget build(BuildContext context) {
    List<Color> colorRing() {
      if (timeleft < 0.25) {
        return [
          Theme.of(context).colorScheme.secondary,
          Theme.of(context).colorScheme.onError,
          Theme.of(context).colorScheme.onError,
          Theme.of(context).colorScheme.secondary,
        ];
      } else if (timeleft < 0.5) {
        return [
          Theme.of(context).colorScheme.secondary,
          Theme.of(context).colorScheme.onTertiary,
          Theme.of(context).colorScheme.onTertiary,
          Theme.of(context).colorScheme.secondary,
        ];
      } else {
        return [
          Theme.of(context).colorScheme.secondary,
          Theme.of(context).colorScheme.primary,
          Theme.of(context).colorScheme.primary,
          Theme.of(context).colorScheme.secondary,
        ];
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        children: [
          CircularPercentIndicator(
            animation: true,
            animationDuration: 1000,
            radius: 31.0,
            lineWidth: 3.17,
            percent: timeleft,
            rotateLinearGradient: true,
            startAngle: 355.0,
            reverse: true,
            backgroundColor: Theme.of(context).colorScheme.secondary,
            center: const DefaultAvatar(radius: 20.72),
            linearGradient: LinearGradient(colors: colorRing()),
          ),
          const SizedBox(height: 4),
          Text(nameData, style: Theme.of(context).textTheme.bodyText2),
        ],
      ),
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
