import 'package:flutter/material.dart';
import 'package:doxa_mobile_app/styles.dart';
import 'package:doxa_mobile_app/presentation/widgets/avatar.dart';

class OpenedJobBox extends StatelessWidget {
  final String name;
  final String company;
  final String url;
  const OpenedJobBox({
    Key? key,
    required this.name,
    required this.company,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Avatar(
              radius: 30,
              avatarUrl: 'https://picsum.photos/200',
            ),
            const SizedBox(height: 5),
            Text(
              name,
              style: Theme.of(context).textTheme.bodyText2?.copyWith(color: const Color(0xFF1D1C1C)),
            ),
            const SizedBox(height: 5),
            Text(
              company,
              style: Theme.of(context).textTheme.caption?.copyWith(color: const Color(0xFF737B7D)),
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(boxShadow: Styles.elevation3, color: Colors.white, borderRadius: BorderRadius.circular(8)),
      height: 154,
    ));
  }
}
