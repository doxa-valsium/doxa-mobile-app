import 'package:doxa_mobile_app/styles.dart';
import 'package:flutter/material.dart';

class ButtomWidget extends StatelessWidget {
  const ButtomWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        boxShadow: Styles.elevation1,
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.fromLTRB(20, 0, 8, 0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Type something.',
                hintStyle: Theme.of(context).textTheme.bodyText2?.copyWith(
                      color: Colors.grey,
                    ),
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            height: 48,
            width: 56,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(16),
              boxShadow: Styles.elevation1,
            ),
            child: IconButton(
              icon: Icon(
                Icons.send,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
