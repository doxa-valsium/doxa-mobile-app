import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';

class CustomAppBarAndBody extends StatelessWidget {
  final Widget body;
  final String title;
  final bool showBackButton;

  const CustomAppBarAndBody({
    Key? key,
    required this.body,
    required this.title,
    required this.showBackButton,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (!showBackButton) {
      return NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            centerTitle: false,
            floating: true,
            snap: true,
            elevation: 0.0,
            title: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 16.0),
              child: Text(
                title,
                style: Theme.of(context).textTheme.headline5?.copyWith(color: Theme.of(context).colorScheme.onBackground),
              ),
            ),
            backgroundColor: Theme.of(context).colorScheme.background,
            automaticallyImplyLeading: false,
          ),
        ],
        body: body,
      );
    } else {
      return NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            floating: true,
            snap: true,
            elevation: 0.0,
            title: Padding(
              padding: const EdgeInsets.only(left: 0.0, top: 16.0),
              child: Text(
                title,
                style: Theme.of(context).textTheme.headline5?.copyWith(color: Theme.of(context).colorScheme.onBackground),
              ),
            ),
            backgroundColor: Theme.of(context).colorScheme.background,
            // automaticallyImplyLeading: true,
            leading: Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 20.0),
              child: GestureDetector(
                onTap: () {
                  context.router.pop();
                },
                child: const Iconify(
                  Ic.round_arrow_back_ios,
                  size: 8.0,
                  color: Color(0xFF737B7D),
                ),
              ),
            ),
          ),
        ],
        body: body,
      );
    }
  }
}