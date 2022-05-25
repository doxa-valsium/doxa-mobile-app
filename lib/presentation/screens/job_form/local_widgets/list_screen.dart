import 'package:auto_route/auto_route.dart';
import 'package:doxa_mobile_app/presentation/screens/job_form/local_widgets/list_component.dart';
import 'package:doxa_mobile_app/presentation/screens/job_form/local_widgets/search_bar_form_list.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';

class ListScreen extends StatefulWidget {
  final String title;
  final FormListType type;

  const ListScreen({Key? key, required this.title, required this.type}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
            automaticallyImplyLeading: true,
            leadingWidth: 48,
            leading: GestureDetector(
              onTap: (() => context.router.pop()),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Iconify(
                  Ic.outline_arrow_back_ios,
                  size: 5,
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (widget.type == FormListType.dynamicList) const SearchBarFormList(),
              const SizedBox(height: 16),
              Expanded(
                child: ListView(
                  children: const [
                    ListComponent(text: "Flutter"),
                    ListComponent(text: "C++"),
                    ListComponent(text: "Dart"),
                    ListComponent(text: "Photoshope"),
                    ListComponent(text: "Java"),
                  ],
                ),
              )
            ],
          )),
    );
  }
}

enum FormListType {
  staticList,
  dynamicList,
}
