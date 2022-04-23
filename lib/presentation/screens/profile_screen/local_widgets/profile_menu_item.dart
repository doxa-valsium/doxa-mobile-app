import 'package:doxa_mobile_app/styles.dart';
import 'package:flutter/material.dart';

class ProfileMenuItem extends StatelessWidget {
  const ProfileMenuItem({Key? key, required this.menuIcon, required this.menuText}) : super(key: key);
  final Icon menuIcon;
  final String menuText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68.0,
      //width: 280.0,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary,
        boxShadow: Styles.elevation2,
        borderRadius: const BorderRadius.all(
          Radius.circular(16.0), //asdasdgasddadas
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: menuIcon,
          ),
          const SizedBox(
            width: 28,
          ),
          Text(
            menuText,
            style: Theme.of(context).textTheme.button?.copyWith(color: Theme.of(context).colorScheme.onSurface),
            //maxLines: 1,
            // overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
