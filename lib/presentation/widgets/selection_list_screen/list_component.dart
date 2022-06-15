import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ListComponent extends StatelessWidget {
  final String text;
  const ListComponent({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        context.router.popForced(text);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 32),
        child: SizedBox(
          width: double.infinity,
          height: 32,
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(text, maxLines: 1, overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant)),
            Divider(
              height: 1,
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            )
          ]),
        ),
      ),
    );
  }
}
