import 'package:bloc/bloc.dart';
import 'package:doxa_mobile_app/data/repositories/selectable_repository/selectable_repository.dart';
import 'package:doxa_mobile_app/data/repositories/selectable_repository/supabase_selectable_repository.dart';
import 'package:doxa_mobile_app/models/selectable.dart';
import 'package:doxa_mobile_app/services/error_message_service.dart';
import 'package:equatable/equatable.dart';

part 'selectable_event.dart';
part 'selectable_state.dart';

class SelectableBloc extends Bloc<SelectableEvent, SelectableState> {
  SelectableBloc() : super(SelectableInitialState()) {
    final SelectableRepository selectableRepository = SupabaseSelectableRepository();
    on<FetchSelectables>((event, emit) async {
      emit(SelectableLoadingState());
      try {
        final List<Selectable?> response = await selectableRepository.getSelectables(event.selectableType);
        emit(SelectableLoadedState(selectables: response));
      } on Exception {
        emit(const SelectableErrorState(errorMessage: ErrorMessageService.genericErrorMessage));
      }
    });
    on<AddSelectable>((event, emit) {});
  }
}
