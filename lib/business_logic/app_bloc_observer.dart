import 'package:bloc/bloc.dart';
import 'package:doxa_mobile_app/logger.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    logger.i('${bloc.runtimeType} created');
    super.onCreate(bloc);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    logger.i('${bloc.runtimeType} state changed: $change');
  }


  @override
  void onClose(BlocBase bloc) {
    logger.i('${bloc.runtimeType} closed');
    super.onClose(bloc);
  }

  @override
  void onEvent(Bloc<dynamic,dynamic> bloc, Object? event) {
    logger.i('${bloc.runtimeType} recieved event: $event');
    super.onEvent(bloc, event);
  }
}
