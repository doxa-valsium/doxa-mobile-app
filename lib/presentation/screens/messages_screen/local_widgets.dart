import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../../../styles.dart';
import '../../widgets/avatar.dart';

class ConversationCard extends StatelessWidget {
  final String candidateName;

  const ConversationCard({Key? key, this.candidateName = "Candidate Name"}) : super(key: key);

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
              flex: 1,
              child: Avatar(
                radius: 28,
                avatarUrl: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQicA4b4KLMCWYETPLWMNk7REyoOOQMMB37wrpcg2Iux4QuqM-j",
              )),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    candidateName,
                    style: Theme.of(context).textTheme.bodyText2,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    'Job Name Candidate Matched For',
                    style: Theme.of(context).textTheme.overline?.copyWith(color: Theme.of(context).colorScheme.onSurface),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    'Hey! Is this job available?',
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.onSurface),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "11: 06 PM",
                  style: Theme.of(context).textTheme.caption?.copyWith(color: Theme.of(context).colorScheme.onSurface),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MatchChatHead extends StatelessWidget {
  const MatchChatHead({Key? key, required this.timeleft, this.nameData = "Syed Hasan Faaz Abidi"}) : super(key: key);

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
      padding: const EdgeInsets.only(top: 8.0),
      child: SizedBox(
        width: 48 * 2,
        child: Column(
          children: [
            CircularPercentIndicator(
              animation: true,
              animationDuration: 1000,
              radius: 32,
              lineWidth: 4,
              percent: timeleft,
              rotateLinearGradient: true,
              startAngle: 355.0,
              reverse: true,
              backgroundColor: Theme.of(context).colorScheme.secondary,
              center: const Avatar(radius: 24, avatarUrl: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQicA4b4KLMCWYETPLWMNk7REyoOOQMMB37wrpcg2Iux4QuqM-j"),
              linearGradient: LinearGradient(colors: colorRing()),
            ),
            const SizedBox(height: 4),
            Text(
              nameData,
              style: Theme.of(context).textTheme.bodyText2,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
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
