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
          height: 148,
          width: 148,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Styles.mainTheme.colorScheme.secondaryContainer.withOpacity(0.6),
          ),
        ),
        Container(
          height: 112,
          width: 112,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Styles.mainTheme.colorScheme.secondaryContainer.withOpacity(1.0),
            border: Border.all(
              color: Styles.mainTheme.colorScheme.secondaryContainer,
              width: 3.0,
              style: BorderStyle.solid,
            ),
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
