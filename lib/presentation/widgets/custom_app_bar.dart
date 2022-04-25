import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final Widget body;
  final Widget title;
  final Widget? leading;
  const CustomAppBar({
    Key? key,
    required this.body,
    required this.title,
    this.leading,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      floatHeaderSlivers: true,
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        SliverAppBar(
          floating: true,
          snap: true,
          elevation: 0.0,
          title: title,
          backgroundColor: Theme.of(context).colorScheme.background,
          automaticallyImplyLeading: leading != null,
          leading: leading,
        ),
      ],
      body: body,
    );
  }
}
