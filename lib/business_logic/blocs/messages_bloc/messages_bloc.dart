import 'package:bloc/bloc.dart';
import 'package:doxa_mobile_app/constants.dart';
import 'package:doxa_mobile_app/data/exceptions/chat_exception.dart';
import 'package:doxa_mobile_app/data/exceptions/match_exception.dart';
import 'package:doxa_mobile_app/data/repositories/chat_repository/chat_repository.dart';
import 'package:doxa_mobile_app/data/repositories/match_repository/match_repository.dart';
import 'package:doxa_mobile_app/data/repositories/user_repository/user_repository.dart';
import 'package:doxa_mobile_app/logger.dart';
import 'package:doxa_mobile_app/models/chat.dart';
import 'package:doxa_mobile_app/models/match.dart' as local_match;

import 'package:equatable/equatable.dart';

part 'messages_event.dart';
part 'messages_state.dart';

class MessagesBloc extends Bloc<MessagesEvent, MessagesState> {
  final MatchRepository _matchRepository;
  final UserRepository _userRepository;
  final ChatRepository _chatRepository;

  MessagesBloc({
    required MatchRepository matchRepository,
    required UserRepository userRepository,
    required ChatRepository chatRepository,
  })  : _matchRepository = matchRepository,
        _userRepository = userRepository,
        _chatRepository = chatRepository,
        super(MessagesInitialState()) {
    on<FectchMatches>((event, emit) async {
      emit(MessagesLoadingState());
      try {
        // _chatRepository.getRecruiterChats(recruiterId: _userRepository.getLoggedInUser!.userId!);
        kSupabase.from('matches').stream(['id']).execute().listen((data) {
              logger.i(data);
            });
        final List<local_match.Match> pendingMatches= await _matchRepository.getNotInitiatedRecruiterMatches(recruiterId: _userRepository.getLoggedInUser!.userId!);
        emit(MessagesLoadedState(chats: const [], pendingMatches: pendingMatches));
      } on MatchException catch (e) {
        logger.e(e.message);
        emit(MessagesErrorState(errorMessage: e.toString()));
      } on ChatException catch (e) {
        logger.e(e.message);
        emit(MessagesErrorState(errorMessage: e.toString()));
      }
    });
  }
}
