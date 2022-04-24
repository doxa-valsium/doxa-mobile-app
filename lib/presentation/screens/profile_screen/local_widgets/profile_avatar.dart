import 'package:doxa_mobile_app/presentation/widgets/avatar.dart';
import 'package:doxa_mobile_app/styles.dart';
import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({Key? key, this.avatarUrl}) : super(key: key);

  final String? avatarUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 140,
          width: 148,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: Styles.gradient1,
          ),
        ),
        Container(
          height: 112,
          width: 112,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: Styles.gradient1,
          ),
        ),
        Avatar(
          radius: 40.0,
          avatarUrl: avatarUrl,
        ),
      ],
    );
  }
}
