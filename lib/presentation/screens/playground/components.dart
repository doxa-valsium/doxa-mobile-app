import 'package:doxa_mobile_app/presentation/widgets/avatar.dart';
import 'package:doxa_mobile_app/presentation/widgets/default_avatar.dart';
import 'package:flutter/material.dart';

class CustomWidgets extends StatelessWidget {
  static const String route = '/custom-widgets';
  const CustomWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Text(
                  'Widgets',
                  style: Theme.of(context).textTheme.headline5,
                ),
                const SizedBox(height: 20),
                Text(
                  'Circle Avatar',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                const SizedBox(height: 16),
                Wrap(
                  spacing: 16.0,
                  runSpacing: 16.0,
                  children: [
                    Column(
                      children: [
                        const Avatar(
                          radius: 50,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Avatar with image url = null',
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Avatar(
                          radius: 50,
                          avatarUrl: 'https://picsum.photos/200',
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Avatar with image url',
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const DefaultAvatar(
                          radius: 50,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Default Avatar',
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            )),
      ),
    );
  }
}
