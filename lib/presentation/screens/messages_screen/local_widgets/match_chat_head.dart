import 'package:auto_route/auto_route.dart';
import 'package:doxa_mobile_app/presentation/widgets/avatar.dart';
import 'package:doxa_mobile_app/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:doxa_mobile_app/models/match.dart' as local_match;


class MatchChatHead extends StatelessWidget {
  const MatchChatHead({
    Key? key,
    required this.timeleft,
    required this.match,
  }) : super(key: key);

  final local_match.Match match;
  final double timeleft;

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
                center: Avatar(radius: 24, avatarUrl: match.profileUrl,),
                linearGradient: LinearGradient(colors: colorRing()),
              ),
              const SizedBox(height: 4),
              Text(
                match.candidateName,
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
