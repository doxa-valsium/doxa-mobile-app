import 'package:flutter/material.dart';

class JobCardGrid extends StatelessWidget {
  final String title;
  final String subtitle;
  const JobCardGrid({
    required this.title,
    required this.subtitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.caption?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
        ),
        const SizedBox(height: 4),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.subtitle2?.copyWith(color: Theme.of(context).colorScheme.onBackground),
        )
      ],
    );
  }
}
