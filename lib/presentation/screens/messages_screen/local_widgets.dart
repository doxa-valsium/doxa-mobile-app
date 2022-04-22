import 'package:auto_route/auto_route.dart';
import 'package:doxa_mobile_app/presentation/widgets/avatar.dart';
import 'package:doxa_mobile_app/routes/router.gr.dart';
import 'package:doxa_mobile_app/styles.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ConversationCard extends StatelessWidget {
  final String candidateName;
  final bool msgTag;
  final String imageSource;
  final String jobAppliedFor;
  final String latestMessage;

  const ConversationCard(
      {Key? key,
      required this.msgTag,
      this.candidateName = "Candidate Name",
      this.imageSource = "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQicA4b4KLMCWYETPLWMNk7REyoOOQMMB37wrpcg2Iux4QuqM-j",
      this.jobAppliedFor = 'Job Name Candidate Matched For',
      this.latestMessage = 'Hey! Is this job available?'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.push(
          const ChatRoute(),
        );
      },
      child: Container(
        height: 92,
        decoration: BoxDecoration(
          boxShadow: Styles.elevation2,
          color: Theme.of(context).colorScheme.onPrimary,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                flex: 1,
                child: Avatar(
                  radius: 28,
                  avatarUrl: imageSource,
                )),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      candidateName,
                      style: Theme.of(context).textTheme.bodyText2,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      jobAppliedFor,
                      style: Theme.of(context).textTheme.overline?.copyWith(color: Theme.of(context).colorScheme.onSurface),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Spacer(),
                    Text(
                      latestMessage,
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "11: 06 PM",
                    style: Theme.of(context).textTheme.caption?.copyWith(color: Theme.of(context).colorScheme.onSurface),
                  ),
                  const Spacer(),
                  if (msgTag)
                    Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          "88+",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.overline?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MatchChatHead extends StatelessWidget {
  const MatchChatHead({
    Key? key,
    required this.timeleft,
    this.candidateName = "Ahmed Raza",
    this.imageSource = "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQicA4b4KLMCWYETPLWMNk7REyoOOQMMB37wrpcg2Iux4QuqM-j",
  }) : super(key: key);

  final double timeleft;
  final String candidateName;
  final String imageSource;

  List<Color> colorRing() {
    if (timeleft < 0.45) {
      return const [
        Color(0xffFFEAEA),
        Color(0xffD53030),
        Color(0xe2D53030),
        Color(0xffFFEAEA),
      ];
    } else if (timeleft < 0.75) {
      return const [
        Color(0xffFFEED4),
        Color(0xffF6990C),
        Color(0xe2F7B249),
        Color(0xffFFEED4),
      ];
    } else {
      return const [
        Color(0xffCCE8F4),
        Color(0xff30a2d5),
        Color(0xe230a2d5),
        Color(0xffCCE8F4),
      ];
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.push(
          const ChatRoute(),
        );
      },
      child: Padding(
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
                center: Avatar(radius: 24, avatarUrl: imageSource),
                linearGradient: LinearGradient(colors: colorRing()),
              ),
              const SizedBox(height: 4),
              Text(
                candidateName,
                style: Theme.of(context).textTheme.bodyText2,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
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
      padding: const EdgeInsets.only(left: 16),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search",
          hintStyle: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.surface),
          border: InputBorder.none,
          suffixIcon: Icon(
            Icons.search,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
      ),
    );
  }
}
