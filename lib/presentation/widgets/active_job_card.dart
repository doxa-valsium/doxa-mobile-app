import 'package:doxa_mobile_app/presentation/widgets/custom_chip.dart';
import 'package:doxa_mobile_app/styles.dart';
import 'package:flutter/material.dart';

class ActiveJobCard extends StatelessWidget {
  const ActiveJobCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: 187,
        padding: const EdgeInsets.only(top: 17),
        decoration: BoxDecoration(boxShadow: Styles.elevation3, color: Colors.white, borderRadius: const BorderRadius.all(Radius.circular(8))),
        height: 113,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Human Resource Manager",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.onBackground),
            ),
            const SizedBox(height: 3),
            Text(
              "Karachi, Pakistan | Full-Time",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.overline?.copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            const SizedBox(height: 15),
            CustomChip(
              text: '5 Matches',
              backgroundColor: Theme.of(context).colorScheme.secondary,
              foregroundColor: Theme.of(context).colorScheme.onSecondary,
            ),
          ]),
        ),
      ),
    );
  }
}
