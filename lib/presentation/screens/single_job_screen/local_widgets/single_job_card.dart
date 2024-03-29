import 'package:doxa_mobile_app/presentation/widgets/custom_extended_card.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bx.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:doxa_mobile_app/presentation/widgets/avatar.dart';

class SingleJobCard extends StatelessWidget {
  final bool newMessage;
  final ButtonType buttonType1;

  const SingleJobCard({Key? key, required this.newMessage, required this.buttonType1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomExtendedCard(
      upperBoxHeight: 155,
      lowerBoxHeight: 40,
      buttonType: buttonType1,
      childTopCard: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Avatar(
              radius: 30,
              avatarUrl: 'https://picsum.photos/200',
            ),
          ),
          const SizedBox(height: 8),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Ahmed Raza",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.bodyText2?.copyWith(color: const Color(0xFF1D1C1C)),
            ),
          ),
          const SizedBox(height: 8),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Software Engineer @ Current Company",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.overline?.copyWith(color: const Color(0xFF737B7D)),
            ),
          ),
        ],
      ),
      childBottomCard: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: newMessage
            ? [
                Flexible(
                  child: Iconify(
                    Mdi.message_processing,
                    size: 16,
                    color: Theme.of(context).colorScheme.onSecondaryContainer,
                  ),
                ),
                const SizedBox(width: 8),
                Flexible(
                  child: Text(
                    'MESSAGE',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.overline?.copyWith(color: Theme.of(context).colorScheme.background),
                  ),
                ),
              ]
            : [
                Flexible(
                  child: Iconify(
                    Bx.check_double,
                    size: 16,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                const SizedBox(width: 8),
                Flexible(
                  child: Text(
                    'VIEW INBOX',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.overline?.copyWith(color: Theme.of(context).colorScheme.primary),
                  ),
                ),
              ],
      ),
    );
  }
}
