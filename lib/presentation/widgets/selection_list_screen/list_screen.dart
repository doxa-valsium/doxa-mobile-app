import 'package:auto_route/auto_route.dart';
import 'package:doxa_mobile_app/business_logic/blocs/selectable/selectable_bloc.dart';
import 'package:doxa_mobile_app/logger.dart';
import 'package:doxa_mobile_app/presentation/widgets/selection_list_screen/list_component.dart';
import 'package:doxa_mobile_app/presentation/widgets/selection_list_screen/search_bar_form_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';

class ListScreen extends StatefulWidget {
  final String title;
  final FormListType type;
  final Type selectableType;

  const ListScreen({Key? key, required this.title, required this.type, required this.selectableType}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  final SelectableBloc _selectableBloc = SelectableBloc();

  @override
  void initState() {
    _selectableBloc.add(FetchSelectables(selectableType: widget.selectableType));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _selectableBloc,
      child: BlocBuilder<SelectableBloc, SelectableState>(
        builder: (context, state) {
          return BlocListener<SelectableBloc, SelectableState>(
              listener: (context, state) {
                if (state is SelectableErrorState) {
                  logger.i(state.errorMessage);
                }
              },
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
                body: state is SelectableLoadingState
                    ? Center(
                        child: CircularProgressIndicator(
                        color: Theme.of(context).colorScheme.onBackground,
                      ))
                    : state is SelectableLoadedState
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              if (widget.type == FormListType.dynamicList) const SearchBarFormList(),
                              const SizedBox(height: 16),
                              Expanded(
                                  child: ListView.builder(
                                      itemCount: state.selectables.length,
                                      itemBuilder: (context, index) {
                                        return ListComponent(selectable: state.selectables[index]!);
                                      }))
                            ],
                          )
                        : Container(),
              ));
        },
      ),
    );
  }
}

enum FormListType {
  staticList,
  dynamicList,
}
