import 'package:doxa_mobile_app/presentation/widgets/avatar.dart';
import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({Key? key, this.avatarUrl}) : super(key: key);

  final String? avatarUrl;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -64, // 100 - 68
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 148, // /asdjaodasoidasod
            width: 148,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.brown[200],
            ),
          ),
          Container(
            height: 120,
            width: 120,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.brown,
            ),
          ),
          Avatar(
            radius: 44.0,
            avatarUrl: avatarUrl,
          ),
        ],
      ),
    );
  }
}
